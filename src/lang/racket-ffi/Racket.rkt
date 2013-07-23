#lang racket/base

(require
  racket/match
  racket/list
  "../runtime.rkt"
  "../ffi-helpers.rkt")

(provide (rename-out [Racket %PYRET-PROVIDE]))

(define (apply-racket-fun package-name package-member args)
  (define package (string->symbol package-name))
  (define fun (dynamic-require package (string->symbol package-member)))
  (define result (apply fun args))
  result)

;; mk-racket-fun : String -> Value
(define (mk-racket-fun f)
  (define (call . args)
    (cond
      [(and (p:p-str? f) (p:p-str? (first args)))
       (define fstr (p:p-str-s f))
       (define s (p:p-str-s (first args)))
       (ffi-wrap (apply-racket-fun fstr s (map ffi-unwrap (rest args))))]
      [else
       (error (format "Racket: expected string as first argument, got ~a" (first args)))]))
  (p:mk-fun-nodoc-slow call))

(define Racket (p:pλ (arg) "Racket ffi"
  (mk-racket-fun arg)))

