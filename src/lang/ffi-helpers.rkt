#lang whalesong

(require "runtime.rkt"
         "string-map.rkt"
         (rename-in "pyret-lib/moorings.rkt" (%PYRET-PROVIDE pyret-moorings)))
(provide (all-defined-out))

(define pyret-list (p:get-field p:dummy-loc pyret-moorings "list"))

(define (ffi-wrap val)
  (cond
    [(procedure? val)
     (p:mk-fun-nodoc-slow
      (lambda args
        (ffi-wrap (apply val (map ffi-unwrap args)))))]
    [(number? val) (p:mk-num val)]
    [(string? val) (p:mk-str val)]
    [(boolean? val) (p:mk-bool val)]
    [(list? val) (create-pyret-list val)]
    [(string-map-has-key? val 'p-opaque) val]
    [(string-map-has-key? val 'brands) val]
    [else (p:p-opaque val)]))

(define (ffi-unwrap val)
  (cond
    [(p:p-opaque? val) (p:p-opaque-val val)]
    [else
     (cond
      [(p:p-fun? val)
       (lambda args (ffi-unwrap (apply (p:p-fun-f (map ffi-wrap args)))))]
      [(p:p-num? val) (p:p-num-n val)]
      [(p:p-str? val) (p:p-str-s val)]
      [(p:p-bool? val) (p:p-bool-b val)]
      [(p:pyret-val? val)
       (if (pyret-list? val)
           (map ffi-unwrap (p:structural-list->list val))
           val)]
      [else val])]))

(define (create-pyret-list l)
  (define d (p:get-string-dict pyret-list))
  (define link (string-map-ref d "link"))
  (define empty (string-map-ref d "empty"))
  (foldr (λ (elem lst) (p:apply-fun link p:dummy-loc (ffi-wrap elem) lst)) empty l))

(define (pyret-list? l)
  (define is-list (p:get-raw-field p:dummy-loc pyret-list "List"))
  (ffi-unwrap (p:apply-fun is-list p:dummy-loc l)))
