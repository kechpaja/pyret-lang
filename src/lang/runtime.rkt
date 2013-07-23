#lang whalesong

;(require racket/set ;; set add union member intersect map)
(require (for-syntax racket/base))
(require "string-map.rkt")

(define (hash-fold f h init)
  (when (not (hash? h)) (error (format "Bad fold: ~a ~a ~a" f h init)))
  (define (_hash-fold f flds init)
    (cond
      [(empty? flds) init]
      [(cons? flds)
       (_hash-fold f
                  (rest flds)
                  (f (car (first flds))
                     (cdr (first flds))
                     init))]))
  (_hash-fold f (hash-map h cons) init))

(define (list->set lst)
  (make-immutable-hash (map (lambda (elt) (cons elt #t)) lst)))
(define (set)
  (make-immutable-hash))
(define (set-add s k)
  (hash-set s k #t))
(define (set-union s1 s2)
  (hash-fold (lambda (k v init) (hash-set init k #t)) s1 s2))
(define (set-member? s k)
  (hash-has-key? s k))
(define (set-intersect s1 s2)
  (list->set (filter (lambda (elt) (set-member? s2 elt)) (hash-keys s1))))
(define (set-map s f)
  (map f (hash-keys s)))

(define (sqr x) (* x x))

(define pi 3.1415926) ;; NOTE(joe): good enough for government work

;; NOTE(joe): slow enough for government work
(define (string-contains str substr)
  (define strlen (string-length str))
  (define sublen (string-length substr))
  (cond
    [(> sublen strlen) #f]
    [(string=? substr (substring str 0 sublen)) #t]
    [else (string-contains (substring str 1 strlen) substr)]))


(define (string-join strs sep)
  (cond
    [(empty? strs) ""]
    [(empty? (rest strs)) (first strs)]
    [(cons? (rest strs))
     (string-append (first strs)
      (string-append sep
       (string-join (rest strs) sep)))]))

(provide
  (prefix-out p:
    (combine-out
      make-string-map
      p-opaque?
      p-opaque
      p-opaque-val
      p-true
      p-false
      p-bool? p-bool-b
      p-str? p-str-s
      p-num? p-num-n
      p-object?
      p-fun? p-fun-f
      p-method? p-method-m
      p-nothing?
      pyret-val?
      get-string-dict
      (struct-out exn:fail:pyret)
      mk-object
      mk-num
      mk-bool
      mk-str
      arity-catcher
      pλ
      mk-fun
      mk-fun-nodoc
      mk-fun-nodoc-slow
      pμ
      mk-method
      mk-structural-list
      structural-list?
      structural-list->list
      mk-exn
      pyret-error
      empty-dict
      get-field
      get-raw-field
      apply-fun
      arity-error
      check-str
      has-field?
      extend
      to-string
      nothing
      pyret-true?
      dummy-loc))
  (rename-out [p-pi pi]
              [print-pfun print]
              [tostring-pfun tostring]
              [brander-pfun brander]
              [check-brand-pfun check-brand]
              [keys-pfun prim-keys]
              [num-keys-pfun prim-num-keys]
              [has-field-pfun prim-has-field]
              [raise-pfun raise]
              [is-nothing-pfun is-nothing]
              [p-else else])
  Any
  Number
  String
  Bool
  Object
  Function
  Method
  nothing)


;(define-type Value (U p-object p-num p-bool
;                      p-str p-fun p-method p-nothing p-opaque))
;(define-type RacketValue (U Number String Boolean p-opaque))

;(define-type-alias MaybeNum (U Number #f))
;(define-type-alias Loc
;  (List (U Path String) MaybeNum MaybeNum MaybeNum MaybeNum))

(define dummy-loc (list "pyret-internal" #f #f #f #f))

(define no-brands (set))

;(define-type Dict (HashTable String Value))
;(define-type Proc (Value * -> Value))

#|
;; p-base: (SetOf Symbol) StringMap (Value ... -> Value) -> p-base
(struct p-base (brands dict app method) #:transparent)
(struct p-nothing p-base () #:transparent)
(struct p-object p-base () #:transparent)
;; p-num : p-base Number -> p-num
(struct p-num p-base (n) #:transparent)
;; p-bool : p-base Boolean -> p-bool
(struct p-bool p-base (b) #:transparent)
;; p-str : p-base String -> p-str
(struct p-str p-base (s) #:transparent)
;; p-fun : p-base (Loc -> Proc) -> p-fun
(struct p-fun p-base () #:transparent)
;; p-method: p-base Proc -> p-method
(struct p-method p-base () #:transparent)
(struct p-opaque (val))
|#

;;
#|
  p-base is:
  {
    'brands: (SetOf symbol)
    'app: Value ... -> Value
    'method: Value Value ... -> Value
    [field-str]: Value
  }

  p-nothing is:

    p-base.{ 'p-nothing: #t }

  p-num is:

    p-base.{ 'p-num: number }

  p-str is:

    p-base.{ 'p-str: string }

  p-bool is:

    p-base.{ 'p-bool: boolean }

  p-object is:

    p-base.{ 'p-object: #t }

  p-fun is:

    p-base.{ 'p-fun: #t }

  p-method is:

    p-base.{ 'p-method: #t }

  p-opaque is

    p-base.{ 'p-opaque: Any }
|#

(define (loc-list loc)
  (define (serialize-source e)
    (cond
      [(symbol? e) (symbol->string e)]
      [(string? e) e]
      [(false? e) "unknown source"]
      [else (error (format "Non-symbol, non-string, non-path value for
                            source: ~a" e))]))
  (list (serialize-source (srcloc-source loc))
        (srcloc-line loc)
        (srcloc-column loc)
        (srcloc-position loc)
        (srcloc-span loc)))

(define (get-top-loc)
  (define cms (continuation-mark-set->list (current-continuation-marks) 'pyret-mark))
  (cond
    [(> (length cms) 0) (loc-list (first cms))]
    [else dummy-loc]))

(define-syntax-rule (arity-catcher (arg ...) e ...)
  (case-lambda
    [(arg ...) e ...]
    [arity-mismatch-args-list
     (arity-error (get-top-loc) (quote (arg ...)) arity-mismatch-args-list)]))

;; NOTE(joe): the nested syntax/loc below appears necessary to get good
;; profiling and debugging line numbers for the created functions
(define-syntax (pλ stx)
  (syntax-case stx ()
    [(_ (arg ...) doc e ...)
     (quasisyntax/loc stx
      (mk-fun
        #,(syntax/loc stx (arity-catcher (arg ...) e ...))
        #,(syntax/loc stx (arity-catcher (_ arg ...) e ...))
        doc))]))

(define-syntax (pλ/internal stx)
  (syntax-case stx ()
    [(_ (loc) (arg ...) e ...)
     (quasisyntax/loc stx
      (mk-fun-nodoc
        #,(syntax/loc stx (arity-catcher (arg ...) e ...))
        #,(syntax/loc stx (arity-catcher (_ arg ...) e ...))))]))

(define-syntax (pμ stx)
  (syntax-case stx ()
    [(_ (arg ...) doc e ...)
     (quasisyntax/loc stx
      (mk-method
        (case-lambda
          #,(syntax/loc stx [(arg ...) e ...])
          [arity-mismatch-args-list
           (arity-method-error (get-top-loc) '(arg ...) arity-mismatch-args-list)])
       doc))]))

(define-syntax (pμ/internal stx)
  (syntax-case stx ()
    [(_ (loc) (arg ...) doc e ...)
     (quasisyntax/loc stx
      (mk-method-nodoc
        #,(quasisyntax/loc stx
          (case-lambda
            #,(syntax/loc stx [(arg ...) e ...])
            [arity-mismatch-args-list
             (arity-method-error (get-top-loc) '(arg ...) arity-mismatch-args-list)]))))]))



(struct exn:fail:pyret exn:fail (srcloc system? val)
  #:property prop:exn:srclocs
    (lambda (a-struct)
      (list (exn:fail:pyret-srcloc a-struct))))

(define (mk-pyret-exn str loc val sys)
  (exn:fail:pyret str (current-continuation-marks) (apply srcloc loc) sys val))

;; mk-exn: p-exn -> Value
(define (mk-exn e)
  (define loc (exn:fail:pyret-srcloc e))
  (define maybe-path (srcloc-source loc))
  (define maybe-line (srcloc-line loc))
  (define maybe-col (srcloc-column loc))
  (define path (cond
		[(string? maybe-path) maybe-path]
    ;; TODO(joe): removed for WS
		;[(path? maybe-path) (path->string maybe-path)]
		[else "unnamed-pyret-file"]))
  (define line (if maybe-line maybe-line -1))
  (define column (if maybe-col maybe-col -1))
  (mk-object
    (list (cons "value" (exn:fail:pyret-val e))
	  (cons "system" (mk-bool (exn:fail:pyret-system? e)))
	  (cons "path" (mk-str path))
	  (cons "line" (mk-num line))
	  (cons "column" (mk-num column)))))

;; empty-dict: HashOf String Value
(define empty-dict (make-string-map '()))

(define (bad-app type)
  (lambda args
    (raise
      (pyret-error
        (get-top-loc)
        "apply-non-function"
        (format "check-fun: expected function, got ~a" (to-string type))))))

(define (bad-meth type)
  (lambda args
    (raise
      (pyret-error
        (get-top-loc)
        "apply-non-method"
        (format "check-method: expected method, got ~a" (to-string type))))))

(define nothing (make-string-map
  (list
    (cons 'p-nothing #t)
    (cons 'brands no-brands)
    (cons 'app (bad-app "nothing"))
    (cons 'method (bad-meth "nothing")))))

;; get-dict : Value -> Dict
(define (get-dict v)
  v)

;; get-brands : Value -> Setof Symbol
(define (get-brands v)
  (string-map-ref v 'brands))

(define (p-opaque? v)
  (string-map-has-key? v 'p-opaque))
(define (p-opaque v)
  (make-string-map
    (list
      (cons 'p-opaque v)
      (cons 'brands no-brands)
      (cons 'app obj-bad-app)
      (cons 'method obj-bad-meth))))
(define (p-opaque-val o)
  (string-map-ref o 'p-opaque (lambda () (error "Got opaque of non-opaque"))))

(define obj-bad-app (bad-app "object"))
(define obj-bad-meth (bad-meth "object"))
;; mk-object : Dict -> Value
(define (mk-object dict)
  (make-string-map
    (append
      (list
        (cons 'p-object #t)
        (cons 'brands no-brands)
        (cons 'app obj-bad-app)
        (cons 'method obj-bad-meth))
      dict)))

(define num-bad-app (bad-app "number"))
(define num-bad-meth (bad-meth "number"))
;; mk-num : Number -> Value
(define (mk-num n)
  (string-map-set*
    meta-num-store
    (list
      (cons 'p-num n)
      (cons 'brands no-brands)
      (cons 'app num-bad-app)
      (cons 'method num-bad-meth))))

(define str-bad-app (bad-app "string"))
(define str-bad-meth (bad-meth "string"))
;; mk-str : String -> Value
(define (mk-str s)
  (string-map-set*
    meta-str-store
    (list
      (cons 'p-str s)
      (cons 'brands no-brands)
      (cons 'app str-bad-app)
      (cons 'method str-bad-meth))))

(define (shared-fun-dict f m)
  (list
    (cons 'brands no-brands)
    (cons 'app f)
    (cons 'method m)
    (cons 'p-fun #t)))

;; mk-fun : (Value ... -> Value) String -> Value
(define (mk-fun f m s)
  (make-string-map
    (append (shared-fun-dict f m)
    (list
      (cons "_doc" (mk-str s))
      (cons "_method" (mk-method-method f s))))))

;; mk-fun-nodoc : (Value ... -> Value) -> Value
(define (mk-fun-nodoc f m)
  (make-string-map
    (append (shared-fun-dict f m)
    (list
      (cons "_doc" nothing)
      (cons "_method" (mk-method-method-nodoc f))))))

(define (mk-fun-nodoc-slow f)
  (mk-fun-nodoc f (lambda (_ . args) (apply f args))))
  
(define method-bad-app (bad-app "method"))
;; mk-method-method : (Value ... -> Value) String -> p-method
(define (mk-method-method f doc)
  (make-string-map
    (list
      (cons 'brands no-brands)
      (cons 'app method-bad-app)
      (cons 'method (λ (self) (mk-method f doc)))
      (cons 'p-method #t)
      (cons "_doc" (mk-str doc)))))

;; mk-method-method-nodoc : (Value ... -> Value) -> p-method
(define (mk-method-method-nodoc f)
  (make-string-map
    (list
      (cons 'brands no-brands)
      (cons 'app method-bad-app)
      (cons 'method (λ (self) (mk-method-nodoc f)))
      (cons 'p-method #t)
      (cons "_doc" nothing))))

;; mk-fun-method : (Value ... -> Value) String -> p-method
(define (mk-fun-method f doc)
  (make-string-map
    (list
      (cons 'brands no-brands)
      (cons 'app method-bad-app)
      (cons 'method (λ (self) (mk-fun f (lambda args (apply f (rest args))) doc)))
      (cons 'p-method #t)
      (cons "_doc" (mk-str doc)))))

;; mk-fun-method : (Value ... -> Value) -> p-method
(define (mk-fun-method-nodoc f)
  (make-string-map
    (list
      (cons 'brands no-brands)
      (cons 'app method-bad-app)
      (cons 'method (λ (self) (mk-fun-nodoc f (lambda args (apply f (rest args))))))
      (cons 'p-method #t)
      (cons "_doc" nothing))))


;; mk-method : (Value ... -> Value) String -> Value
(define (mk-method f doc)
  (make-string-map
    (list
      (cons 'brands no-brands)
      (cons 'app method-bad-app)
      (cons 'method f)
      (cons 'p-method #t)
      (cons "_fun" (mk-fun-method f doc))
      (cons "_doc" (mk-str doc)))))

;; mk-method-nodoc : Proc -> Value
(define (mk-method-nodoc f)
  (make-string-map
    (list
      (cons 'brands no-brands)
      (cons 'app method-bad-app)
      (cons 'method f)
      (cons 'p-method #t)
      (cons "_fun" (mk-fun-method-nodoc f))
      (cons "_doc" nothing))))

(define exn-brand (gensym 'exn))

;; pyret-error : Loc String String -> p-exn
(define (pyret-error loc type message)
  (define full-error (exn+loc->message (mk-str message) loc))
  (define obj (mk-object
    (list (cons "message" (mk-str message))
          (cons "type" (mk-str type)))))
  (mk-pyret-exn full-error loc obj #t))

;; get-raw-field : Loc Value String -> Value
(define (get-raw-field loc v f)
  (string-map-ref v f
    (lambda()
      (raise (pyret-error loc "field-not-found" (format "~a was not found on ~a" f (to-string v)))))))

;; get-field : Loc Value String -> Value
(define (get-field loc v f)
  (define vfield (get-raw-field loc v f))
  (cond
    [(string-map-has-key? vfield 'p-method)
     (mk-fun (λ args (apply (string-map-ref vfield 'p-method) (cons v args))) "")]
    #;[(p-method? vfield)
     (let [(curried
            (mk-fun (λ args (apply (p-base-method vfield)
                                   (cons v args)))
                    (λ args (apply (p-base-method vfield)
                                   (cons v (rest args))))
                    (get-field loc vfield "_doc")))]
       (if (has-field? vfield "tostring")
           (extend loc curried
                   (list
                    (cons "tostring"
                          (get-field loc vfield "tostring"))))
           curried))]
    [else vfield]))

(define (check-str v l)
  (string-map-ref v 'p-str
    (lambda ()
     (raise
       (pyret-error
        l
        "field-non-string"
        (format "field: expected string, got ~a" (to-string v)))))))


;; apply-fun : Value Loc Value * -> Values
(define (apply-fun v l . args)
  (define f (string-map-ref v 'app
    (lambda ()
     (raise
      (pyret-error
        l
        "apply-non-function"
        (format "apply-fun: expected function, got ~a" (to-string v)))))))
  (apply f args))

(define (arity-method-error loc argnames args)
  (cond
    [(= (length args) 0)
     (raise
      (pyret-error loc
        "Arity mismatch (method): expected ~a arguments and an object, but no arguments or object were provided"
        (length argnames)))]
    [else
     (raise
      (pyret-error
        loc
        "arity-mismatch"
        (format
  "Arity mismatch (method): expected ~a arguments and an object, but the ~a provided argument(s) were:
~a
And the object was:
~a"

          (- (length argnames) 1)
          (- (length args) 1)
          (string-join (map to-string (drop args 1)) "\n")
          (to-string (first args)))))]))

(define (arity-error loc argnames args)
  (raise
    (pyret-error
      loc
      "arity-mismatch"
      (format
"Arity mismatch: expected ~a arguments, but got ~a.  The ~a provided argument(s) were:
~a"
        (length argnames)
        (length args)
        (length args)
        (string-join (map to-string args) "\n")))))

;; add-brand : Value Symbol -> Value
(define (add-brand v new-brand)
  (string-map-set v 'brands (set-add (get-brands v) new-brand)))

;; has-brand? : Value Symbol -> Boolean
(define (has-brand? v brand)
  (set-member? (get-brands v) brand))

;; has-field? : Value String -> Boolean
(define (has-field? v f)
  (string-map-has-key? v f))

;; extend : Loc Value Dict -> Value
(define (extend loc base extension)
  (string-map-set* base extension))

;; structural-list? : Value -> Boolean
(define (structural-list? v)
  (and (string-map-has-key? v "first")
       (string-map-has-key? v "rest")))

;; structural-list->list : Value -> Listof Value
(define (structural-list->list lst)
  (cond
    [(structural-list? lst)
     (cons (string-map-ref lst "first")
           (structural-list->list (string-map-ref lst "rest")))]
    [else empty]))

;; mk-structural-list : ListOf Value -> Value
(define (mk-structural-list lst)
  (cond
    [(empty? lst) (mk-object
        `(("is-empty" . ,(mk-bool #t))))]
    [(cons? lst) (mk-object
        `(("first" . ,(first lst))
          ("is-empty" . ,(mk-bool #f))
          ("rest" . ,(mk-structural-list (rest lst)))))]
    [else (error 'mk-structural-list (format "mk-structural-list got ~a" lst))]))

;; keys : Value -> Value
(define keys-pfun (pλ/internal (loc) (object)
  (mk-structural-list (map mk-str (string-map-keys (get-dict object))))))

;; TODO(joe): Quickify
(define num-keys-pfun (pλ/internal (loc) (object)
  (mk-num (string-map-count object))))

(define has-field-pfun (pλ/internal (loc) (object field)
  (define the-field
    (string-map-ref field 'p-str
      (lambda ()
       (raise
        (pyret-error
          (get-top-loc)
          "has-field-non-string"
          (format "has-field: expected string, got ~a" (to-string field)))))))
  (mk-bool (has-field? object the-field))))

;; mk-brander : Symbol -> Proc
(define (mk-brander sym)
  (pλ (v)
    "Brands values"
    (add-brand v sym)))

;; mk-checker : Symbol -> Proc
(define (mk-checker sym)
  (pλ (v)
    "Checks brands on values"
    (mk-bool (has-brand? v sym))))

;; brander : -> Value
(define brander-pfun (pλ/internal (_) ()
  (define sym (gensym))
  (mk-object
   `(("brand" .
      ,(mk-brander sym))
     ("test" .
      ,(mk-checker sym))))))

(define (pyret-true? v)
  (or (eq? v p-true) (string-map-ref v 'p-bool #f)))

(define-syntax-rule (mk-prim-fun op opname wrapper (arg ...) (prop ...))
  (mk-prim-fun-default op opname wrapper (arg ...) (prop ...)
    (lambda ()
      (define args-strs (list (to-string arg) ...))
      (define args-str (string-join args-strs ", "))
      (define error-val (mk-str (format "Bad args to prim: ~a : ~a" opname args-str)))
      (raise (mk-pyret-exn (exn+loc->message error-val (get-top-loc)) (get-top-loc) error-val #f)))))

(define-syntax-rule (mk-prim-fun-default op opname wrapper (arg ...) (prop ...) default)
  (pμ/internal (loc) (arg ...) ""
    (wrapper (op (string-map-ref arg prop default) ...))))

(define-syntax-rule (mk-lazy-prim op opname wrapper (arg1 arg2 ...) (prop1 prop2 ...))
  (pμ/internal (loc) (arg1 arg2 ...) (symbol->string opname)
    (define (error)
      (define args-strs (list (to-string arg1) (to-string arg2) ...))
      (define args-str (string-join args-strs ", "))
      (define error-val (mk-str (format "Bad args to prim: ~a : ~a" opname args-str)))
      (raise (mk-pyret-exn (exn+loc->message error-val (get-top-loc)) (get-top-loc) error-val #f)))
    (define (check1 arg1) (string-map-ref arg1 prop1 error))
    (define (check2 arg2) (string-map-ref arg2 prop2 error))
    ...
    (wrapper (op (check1 arg1)
                 (check2 ((string-map-ref arg2 'app))) ...))))

(define-syntax-rule (mk-num-1 op opname)
  (mk-prim-fun op opname mk-num (n) ('p-num)))
(define-syntax-rule (mk-num-2 op opname)
  (mk-prim-fun op opname mk-num (n1 n2) ('p-num 'p-num)))
(define-syntax-rule (mk-num-2-bool op opname)
  (mk-prim-fun op opname mk-bool (n1 n2) ('p-num 'p-num)))

;; meta-num-store (Hashof numing value)
(define meta-num-store #f)
(define (meta-num)
  (when (not meta-num-store)
    (set! meta-num-store
      (make-string-map
        `(("_plus" . ,(mk-num-2 + 'plus))
          ("_add" . ,(mk-num-2 + 'plus))
          ("_minus" . ,(mk-num-2 - 'minus))
          ("_divide" . ,(mk-num-2 / 'divide))
          ("_times" . ,(mk-num-2 * 'times))
          ("sin" . ,(mk-num-1 sin 'sin))
          ("cos" . ,(mk-num-1 cos 'cos))
          ("sqr" . ,(mk-num-1 sqr 'sqr))
          ("sqrt" . ,(mk-num-1 sqrt 'sqrt))
          ("floor" . ,(mk-num-1 floor 'floor))
          ("tostring" . ,(mk-prim-fun number->string 'tostring mk-str (n) ('p-num)))
          ("expt" . ,(mk-num-2 expt 'expt))
          ("_equals" . ,(mk-prim-fun-default = 'equals mk-bool (n1 n2) ('p-num 'p-num) (mk-bool #f)))
          ("_lessthan" . ,(mk-num-2-bool < 'lessthan))
          ("_greaterthan" . ,(mk-num-2-bool > 'greaterthan))
          ("_lessequal" . ,(mk-num-2-bool <= 'lessequal))
          ("_greaterequal" . ,(mk-num-2-bool >= 'greaterequal))))))
  meta-num-store)

;; Pyret's char-at just returns a single character string
(define (char-at s n)
  (substring s n (+ n 1)))

(define (string-repeat s n)
  (cond
   [(= n 0) ""]
   [else (string-append s (string-repeat s (- n 1)))]))

;; meta-str-store (Hashof String value)
(define meta-str-store #f)
(define (meta-str)
  (when (not meta-str-store)
    (set! meta-str-store
      (make-string-map
        `(("append" . ,(mk-prim-fun string-append 'append mk-str (s1 s2) ('p-str 'p-str)))
          ("_plus" . ,(mk-prim-fun string-append 'plus mk-str (s1 s2) ('p-str 'p-str)))
          ("contains" . ,(mk-prim-fun string-contains 'contains mk-bool (s1 s2) ('p-str 'p-str)))
          ("substring" . ,(mk-prim-fun substring 'substring mk-str (s n1 n2) ('p-str 'p-num 'p-num)))
          ("char-at" . ,(mk-prim-fun char-at 'char-at mk-str (s n) ('p-str 'p-num)))
          ("repeat" . ,(mk-prim-fun string-repeat 'repeat mk-str (s n) ('p-str 'p-num)))
          ("length" . ,(mk-prim-fun string-length 'length mk-num (s) ('p-str)))
          ("tonumber" . ,(mk-prim-fun string->number 'tonumber mk-num (s) ('p-str)))
          ("_lessequals" . ,(mk-prim-fun string<=? 'lessequals mk-bool (s1 s2) ('p-str 'p-str)))
          ("_lessthan" . ,(mk-prim-fun string<? 'lessthan mk-bool (s1 s2) ('p-str 'p-str)))
          ("_greaterthan" . ,(mk-prim-fun string>? 'greaterthan mk-bool (s1 s2) ('p-str 'p-str)))
          ("_greaterequals" . ,(mk-prim-fun string>=? 'greaterequals mk-bool (s1 s2) ('p-str 'p-str)))
          ("_equals" . ,(mk-prim-fun-default string=? 'equals mk-bool (s1 s2) ('p-str 'p-str) (mk-bool #f)))
      ))))
  meta-str-store)

(define-syntax-rule (mk-bool-1 op opname)
  (mk-prim-fun op opname mk-bool (b) ('p-bool)))
(define-syntax-rule (mk-bool-2 op opname)
  (mk-prim-fun op opname mk-bool (b1 b2) ('p-bool 'p-bool)))
(define-syntax-rule (mk-lazy-bool-2 op opname)
  (mk-lazy-prim op opname mk-bool (b1 b2) ('p-bool 'p-bool)))

(define (bool->string b) (if b "true" "false"))

;; meta-bool-store (Hashof String value)
(define meta-bool-store #f)
(define (meta-bool)
  (when (not meta-bool-store)
    (set! meta-bool-store
      (make-string-map
       `(("_and" . ,(mk-lazy-bool-2 and 'and))
         ("_or" . ,(mk-lazy-bool-2 or 'or))
         ("tostring" . ,(mk-prim-fun bool->string 'tostring mk-str (b) ('p-bool)))
         ("_equals" . ,(mk-prim-fun-default equal? 'equals mk-bool (b1 b2) ('p-bool 'p-bool) (mk-bool #f)))
         ("_not" . ,(mk-bool-1 not 'not))))))
  meta-bool-store)

;; to-string : Value -> String
(define (to-string v)
  (cond
    [(p-nothing? v) "nothing"]
    [(p-num? v) (format "~a" (string-map-ref v 'p-num))]
    [(p-str? v) (format "~a" (string-map-ref v 'p-str))]
    [(p-bool? v) (if (string-map-ref v 'p-bool) "true" "false")]
    [(p-method? v) "[[code]]"]
    [(p-fun? v) "[[code]]"]
    [(p-object? v)
     (define (call-tostring v fallback)
       (if (has-field? v "tostring")
           (let [(m (get-raw-field dummy-loc v "tostring"))]
             (if (p-method? m)
                 ;; NOTE(dbp): this will fail if tostring isn't defined
                 ;; as taking only self.
                 (let [(r ((string-map-ref m 'method) v))]
                   (cond
                    [(p-str? r) (string-map-ref r 'p-str)]
                    [else (fallback)]))
                 (fallback)))
           (fallback)))
        (let ()
          (define (to-string-raw-object h)
            ;; TODO(joe): filter non-string keys
            (define (field-to-string f v)
              (format "~a: ~a" f (to-string v)))
            (format "{ ~a }"
                    (string-join (string-map-map h field-to-string) ", ")))
          (call-tostring
           v
           (λ () (to-string-raw-object v))))]
    [else (format "~a" v)]))

(define tostring-pfun (pλ/internal (loc) (o)
  (mk-str (to-string o))))

(define print-pfun (pλ/internal (loc) (o)
  (begin (printf "~a\n" (to-string o)) nothing)))

;; check-brand-pfun : Loc -> Value * -> Value
(define check-brand-pfun (pλ/internal (loc) (ck o s)
  (define (error)
    (define typname (string-map-ref s 'p-str))
    (let [(val (mk-str (format "runtime: typecheck failed; expected ~a and got\n~a"
                       typname (to-string o))))]
     (raise (mk-pyret-exn (exn+loc->message val (get-top-loc)) (get-top-loc) val #f))))
  (define b (string-map-ref ((string-map-ref ck 'app) o) 'p-bool error))
  (if b o (error))))

;; exn+loc->message : Value Loc -> String
(define (exn+loc->message v l)
  (format
    "~a:~a:~a: Uncaught exception ~a\n"
    (first l)
    (second l)
    (third l)
    (to-string v)))

(define raise-pfun (pλ/internal (loc) (o)
  (raise (mk-pyret-exn (exn+loc->message o (get-top-loc)) (get-top-loc) o #f))))

(define is-nothing-pfun (pλ/internal (loc) (specimen)
  (mk-bool (equal? specimen nothing))))

;; tie the knot of mutual state problems
(void
  (meta-num)
  (meta-bool)
  (meta-str))

(define p-true (string-map-set*
  meta-bool-store
  (list
    (cons 'brands no-brands)
    (cons 'p-bool #t)
    (cons 'app (bad-app "true"))
    (cons 'method (bad-meth "true")))))
(define p-false (string-map-set*
  meta-bool-store
  (list
    (cons 'brands no-brands)
    (cons 'p-bool #f)
    (cons 'app (bad-app "false"))
    (cons 'method (bad-meth "false")))))
;; mk-bool : Boolean -> Value
(define (mk-bool b)
  (if b p-true p-false))
(define p-else p-true)
(define p-pi (mk-num pi))

(define Any (pλ/internal (loc) (_) p-true))

(define-syntax-rule (mk-pred name test)
  (define name
    (pλ (arg)
      (format "Built-in predicate for ~a" 'name)
      (mk-bool (test arg)))))

(define (p-nothing? v)
  (string-map-has-key? v 'p-nothing))
(define (p-num? v)
  (string-map-has-key? v 'p-num))
(define (p-num-n v)
  (string-map-ref v 'p-num (λ () (error (format "p-num-n on non-p-num: ~a" v)))))
(define (p-str? v)
  (string-map-has-key? v 'p-str))
(define (p-str-s v)
  (string-map-ref v 'p-str (λ () (error (format "p-str-s on non-p-str: ~a" v)))))
(define (p-bool? v)
  (string-map-has-key? v 'p-bool))
(define (p-bool-b v)
  (string-map-ref v 'p-bool (λ () (error (format "p-bool-s on non-p-bool: ~a" v)))))
(define (p-fun? v)
  (string-map-has-key? v 'p-fun))
(define (p-fun-f v)
  (string-map-ref v 'app))
(define (p-method? v)
  (string-map-has-key? v 'p-method))
(define (p-method-m v)
  (string-map-ref v 'method))
(define (p-object? v)
  (string-map-has-key? v 'p-object))

(define (pyret-val? v)
  (and
    (string-map? v)
    (string-map-has-key? v 'brands)))

(define (get-string-dict v)
  (foldr (lambda (key h) (hash-set h key (string-map-ref v key)))
         (make-immutable-hash (list))
         (filter string? (string-map-keys v))))

(mk-pred Number p-num?)
(mk-pred String p-str?)
(mk-pred Bool p-bool?)
(mk-pred Object p-object?)
(mk-pred Function p-fun?)
(mk-pred Method p-method?)

