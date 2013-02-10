#lang racket

;; This file is a rewrite of type checking / contract installation
;; it is done all in one pass.

(require "ast.rkt" "pretty.rkt")

(provide typecheck-pyret)

(define (typecheck-pyret ast)
  ;; note - this should start with default type bindings
  (typeck ast (make-immutable-hash)))


;; contract functions
(define (wrap-ann-check loc ann e)
  (s-app loc (ann-check loc ann) (list e)))

(define (mk-lam loc args result doc body)
  (s-lam loc empty args result doc (s-block loc (list body))))
(define (mk-method loc args result doc-unused body)
  (s-method loc args result (s-block loc (list body))))

(define (ann-check loc ann)
  (define (code-wrapper s args result type get-fun)
    (define funname (gensym "contract"))
    (define wrapargs (map (lambda (a) (s-bind s (gensym "arg") a)) args))
    (define (check-arg bind)
      (match bind
        [(s-bind s id ann) (wrap-ann-check s ann (s-id s id))]))
    (mk-lam s (list (s-bind s funname ann)) ann
     (mk-contract-doc ann)
     (s-onion
       s
       (type s wrapargs result
        (mk-contract-doc ann)
        (wrap-ann-check s result 
         (s-app s (get-fun (s-id s funname)) (map check-arg wrapargs))))
       (list (s-data-field s (s-str s "doc")
                             (s-bracket s
                                        (s-id s funname)
                                        (s-str s "doc")))))))
  (define (mk-contract-doc ann)
    (format "internal contract for ~a" (pretty-ann ann)))
  (define ann-str (s-str loc (pretty-ann ann)))
  (define (mk-flat-checker checker)
    (define argname (gensym "specimen"))
    (mk-lam loc (list (s-bind loc argname (a-blank))) ann
            (mk-contract-doc ann)
            (s-app
             loc
             (s-id loc 'check-brand)
             (list checker
                   (s-id loc argname)
                   ann-str))))
  (match ann
    [(a-name s id)
     (mk-flat-checker
      (s-id s (string->symbol
               (string-append
                (symbol->string id) "?"))))]
    [(a-blank)
     (mk-flat-checker (s-id loc 'Any?))]
    [(a-any)
     (mk-flat-checker (s-id loc 'Any?))]
    [(a-arrow s args result)
     (code-wrapper s args result mk-lam (λ (e) e))]
    [(a-method s args result)
     (define (get-fun e)
       (s-bracket s e (s-str s "_fun")))
     (code-wrapper s args result mk-method get-fun)]
    [(a-pred s ann pred)
     (define ann-wrapper (ann-check s ann))
     (define argname (gensym "pred-arg"))
     (define tempname (gensym "pred-temp"))
     (define result (gensym "pred-result"))
     (mk-lam loc (list (s-bind loc argname (a-blank))) (a-blank)
             (mk-contract-doc ann)
             (s-block s
               (list
                 (s-var s (s-bind s tempname (a-blank))
                          (s-app loc
                                 ann-wrapper
                                 (list (s-id loc argname))))
                 (s-var s (s-bind s result (a-blank))
                          (s-app loc
                                 pred
                                 (list (s-id s tempname))))
                 (s-cond s
                    (list
                      (s-cond-branch s (s-id s result)
                        (s-block s (list (s-id s tempname))))
                      (s-cond-branch s (s-id s 'else)
                        (s-block s
                          (list
                            (s-app s (s-id s 'raise)
                                     (list (s-str s "contract failure"))))))))
               )))]
    [else
     (error
      (format "typecheck: don't know how to check ann: ~a"
              ann))]))


;; functions to work on env
(define (lookup-id id env)
  (define r (hash-ref env id #f))
  (when (not r) (error (format "typecheck: unbound id: ~a" id)))
  r)

(define (add-bind bind env)
  (match bind
    [(s-bind _ id ann)
     (hash-set env id ann)]))

;; misc ast functions
(define (block-binds stmts)
  (map s-var-name (filter s-var? stmts)))

;; type functions
(define (untyped? ann)
  (or (equal? ann (a-blank))
      (equal? ann (a-any))))

;; NOTE(dbp): no subtyping yet
(define (subtype? a b)
  (equal? a b))

;; main typecheck function
(define (typeck ast env)
  (define (typeck-member ast env)
    (match ast
      [(s-data-field s name val)
       (define val-ck (typeck val env))
       (cons (a-field name (car val-ck))
             (cdr val-ck))]
      [(s-method-field s name args ann body)
       (define body-env (foldr add-bind env args))
       (define body-ck (typeck body body-env))
       (define unchecked (s-method-field s name args ann (cdr body-ck)))
       (match ann
         [(a-arrow _ args ret)
          (cond
           [(subtype? (car body-ck) ret)
            (cons (a-field name ann) unchecked)]
           [(untyped? (car body-ck))
            (cons (a-field name ann) (s-method-field s args ann (wrap-ann-check s (cdr body-ck))))]
           [(untyped? ret)
            (cons (a-field name ann) unchecked)]
           [else (error (format "typecheck: error in method field definition at ~a" s))])]
         [(a-blank) (cons (a-field name ann) unchecked)]
         [(a-any) (cons (a-field name ann) unchecked)]
         [else (error (format "typecheck: error in method field definition at ~a" s))])]))
  (match ast
    [(s-block s stmts)
     (define blk-env (foldr add-bind env (block-binds stmts)))
     (s-block s (map (curryr typeck blk-env) stmts))]

    [(s-var s1 (s-bind s2 id ann) val)
     (define val-ck (typeck val env))
     (define var-ty (hash-ref env id #f))
     (cond
      [(subtype? (car val-ck) var-ty)
       (cons (car val-ck) (s-var s1 (s-bind s2 id (a-proved ann)) (cdr val-ck)))]
      [(untyped? var-ty)
       (cons (car val-ck) (s-var s1 (s-bind s2 id ann)
                                 (wrap-ann-check s1 ann (cdr val-ck))))]
      [else (error (format "typecheck: error in variable definition at ~a" s1))])]

    [(s-lam s typarams args ann doc body)
     (define body-env (foldr add-bind env args))
     (define body-ck (typeck body body-env))
     (match ann
       [(a-arrow _ args ret)
        (cond
         [(subtype? (car body-ck) ret) 
          (cons ann (s-lam s typarams args ann doc (cdr body-ck)))]
         [(untyped? (car body-ck))
          (cons ann (s-lam s typarams args ann doc (wrap-ann-check s (cdr body-ck))))]
         [(untyped? ret)
          (cons ann (s-lam s typarams args ann doc (cdr body-ck)))]
         [else (error (format "typecheck: error at ~a" s))])]
       [else (error (format "typecheck: non-arrow annotation on function at ~a" s))])]
    
    [(s-method s args ann body)
     (define body-env (foldr add-bind env args))
     (define body-ck (typeck body body-env))
     (match ann
       [(a-arrow _ args ret)
        (cond
         [(subtype? (car body-ck) ret) 
          (cons ann (s-method s args ann (cdr body-ck)))]
         [(untyped? (car body-ck))
          (cons ann (s-method s args ann (wrap-ann-check s (cdr body-ck))))]
         [(untyped? ret)
          (cons ann (s-method s args ann (cdr body-ck)))]
         [else (error (format "typecheck: error at ~a" s))])]
       [else (error (format "typecheck: non-arrow annotation on method at ~a" s))])]
    
    [(s-cond s c-bs)
     (define (typeck-branch branch ty-bs)
       (define ty (typeck (s-cond-branch-expr branch)))
       (define bs (cons (cdr ty) (cdr ty-bs)))
       (cond
        [(or (equal? #f (car ty-bs))
             (equal? ty (car ty-bs)))
         (cons (car ty) bs)]
        [else
         (cons (a-any) bs)]))
     (define ty-branches (foldr typeck-branch (cons #f (list)) c-bs))
     (cons (car ty-branches) (s-cond s (cdr ty-branches)))]

    [(s-try s try bind catch)
     (define catch-env (add-bind bind env))
     (define try-ck (typeck try env))
     (define catch-ck (typeck catch env))
     (define ty (cond [(equal? (car try-ck) (car catch-ck)) (car try-ck)]
                      [else (a-any)]))
     (cons ty (s-try s (cdr try-ck) bind (cdr catch-ck)))]
    
    [(s-assign s name expr)
     (define name-ty (lookup-id name env))
     (define expr-ck (typeck expr env))
     (cond
      [(subtype? (car expr-ck) name-ty)
       (cons name-ty (cdr expr-ck))]
      [(untyped? (car expr-ck))
       (cons name-ty (s-assign s name (wrap-ann-check name-ty (cdr expr-ck))))]
      [else (error (format "typecheck: error in assignment at ~a" s))])]

    ;; high level:
    ;; create a wrapping lambda that takes all the values as gensymed arg names
    ;; for each argument, let-bind it with a check if needed, a pass-through if static
    ;; then call the inner function
    ;; special case - all the arguments are fine, don't create the wrapping lambda
    [(s-app s fun app-args)
     (define fun-ck (typeck fun env))
     (define args-ck (map (curryr typeck env) app-args))
     (define (check-arg apair l)
       (define arg-ck (car apair)) ; value passed
       (define arg (cdr apair)) ; fun arg type
       (cond
        [(subtype? (car arg-ck) (s-bind-ann arg)) l]
        [(untyped? (car arg-ck))
         (cons (wrap-ann-check (s-bind-ann arg)))]))
     (define (check-bind arg-ck tmpname arg-ty)
       (cond
        [(subtype? (car arg-ck) arg-ty)
         (s-var s (s-bind s tmpname (a-blank)) (cdr arg-ck))]
        [(untyped? (car arg-ck))
         (s-var s (s-bind s tmpname (a-blank)) (wrap-ann-check arg-ty (cdr arg-ck)))]
        [(and (untyped? arg-ty)
              (a-arrow? (car arg-ck)))
         (s-var s (s-bind s tmpname (a-blank)) (wrap-ann-check (car arg-ck) (cdr arg-ck)))]))
     (match (car fun-ck)
       [(a-arrow s args ret)
        (cond
         ;; static verification pass-through case
         [(foldr (lambda (a b) (and a b)) #t (map subtype? (map car args-ck) args))
          (cons ret ast)]
         ;; at least some of the args need wrappers
         [else
          (define tmp-names (map (curry gensym "arg") (map car args-ck)))
          (define binds (map check-bind args-ck tmp-names args))
          (cons
           ret
           (s-lam s
                  (list)
                  (map (curryr (curry s-bind s) (a-any)) tmp-names)
                  ret
                  (s-str s "contract for application")
                  (s-block
                   s
                   (append binds
                           (list (s-app s (cdr fun-ck) (map (curry s-id s) tmp-names)))))))])]
       [(a-blank) (cons (a-blank) (s-app s (cdr fun-ck) (map cdr args-ck)))]
       [(a-any)   (cons (a-blank) (s-app s (cdr fun-ck) (map cdr args-ck)))]
       [else (error (format "typecheck: applying a non-function at ~a" s))])]

    [(s-onion s super fields)
     (define super-ck (typeck super env))
     (define fields-ck (map typeck-member fields))
     (match (car super-ck)
       ;; TODO(dbp): merge the fields
       ;[(a-record flds) ]
       ;[(a-name s id) ]
       [else (cons (a-record s (map car fields-ck))
                   (s-onion s (cdr super-ck) (map cdr fields-ck)))])]

    [(s-obj s fields)
     (define fields-ck (map (curryr typeck-member env) fields))
     (cons (a-record s (map car fields-ck))
           (s-obj s (map cdr fields-ck)))]
    
    [(s-list s elts)
     (define elts-ck (map (curryr typeck env) elts))
     ;; right now not enforcing anything about list elements; to get types, we need
     ;; polymorphic types
     (cons (a-name s 'List)
           (s-list s (map cdr elts-ck)))]

    ;; NOTE(dbp): field story really stupid for now (ie, losing information
    ;; that we have, annotations on members); it can be improved later
    [(s-dot s val field)
     (define val-ck (typeck val env))
     (cons (a-any) (s-dot s (cdr val-ck) field))]
    
    [(s-bracket s val field)
     (define val-ck (typeck val env))
     (define field-ck (typeck field env))
     (cons (a-any) (s-bracket s (cdr val-ck) (cdr field-ck)))]
    
    [(s-dot-method s obj field)
     (define obj-ck (typeck obj env))
     (cons (a-any) (s-dot-method s (cdr obj-ck) field))]
    
    [(s-bracket-method s obj field)
     (define obj-ck (typeck obj env))
     (define field-ck (typeck field env))
     (cons (a-any) (s-bracket-method s (cdr obj-ck) (cdr field-ck)))]

    [(s-num s _) (cons (a-name s 'Number) ast) ]
    [(s-bool s _) (cons (a-name s 'Boolean) ast)]
    [(s-str s _) (cons (a-name s 'String) ast)]
    [(s-id s id)
     (cons (lookup-id id env) ast)]
    
    [else (error (format "Missed a case in type-checking: ~a" ast))]))
