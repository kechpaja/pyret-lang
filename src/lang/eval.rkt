#lang racket/base

(provide
  src->module-name
  repl-eval-pyret
  pyret-to-printable
  print-pyret
  pyret->racket)
(require
  (only-in racket/bool false?)
  racket/match
  racket/pretty
  (only-in racket/base [print racket-print])
  racket/sandbox
  racket/runtime-path
  syntax/modresolve
  syntax/strip-context
  "ast.rkt"
  "get-syntax.rkt"
  "desugar.rkt"
  "desugar-check.rkt"
  "typecheck.rkt"
  "well-formed.rkt"
  "compile.rkt"
  "load.rkt"
  "runtime.rkt")

(define (stx->racket stx desugar)
  (strip-context
   (compile-expr
    (contract-check-pyret
     (desugar
      (well-formed
       (parse-eval stx)))))))

(define (pyret->racket src in #:toplevel [toplevel #f] #:check [check #f])
  (define desugar
    (cond
      [check (lambda (e) (desugar-pyret (desugar-check e)))]
      [else desugar-pyret]))
  (define compile (if toplevel compile-pyret compile-expr))
  (define pyret-stx (get-syntax src in))
  (define parsed-stx (parse-eval pyret-stx))
  (define well-formed-stx (well-formed parsed-stx))
  (define desugared (desugar well-formed-stx))
  (define compiled (compile (contract-check-pyret desugared)))
  (strip-context compiled))

(define (repl-eval-pyret src in)
  ;; the parameterize is stolen from 
  ;; http://docs.racket-lang.org/reference/eval.html?(def._((quote._~23~25kernel)._current-read-interaction))
  (parameterize ([read-accept-reader #t]
                 [read-accept-lang #f])
    (if (not (byte-ready? in))
        eof
        (pyret->racket src in #:toplevel #t))))

(define (simplify-pyret val)
  (cond
    [(eq? val nothing) nothing]
    [(not (p:pyret-val? val)) (void)]
    [(p:p-num? val) (p:p-num-n val)]
    [(p:p-str? val) (p:p-str-s val)]
    [(p:p-bool? val) (p:p-bool-b val)]
    [(p:p-object? val)
     (define d (p:get-string-dict val))
     (make-hash (hash-map d (lambda (s v) (cons s (simplify-pyret v)))))]
    [else val]))

(define (pyret-to-printable val)
  (when (not (equal? val nothing))
    (cond
      [(p:p-opaque? val) val]
      [(p:pyret-val? val) (p:to-string val)]
      [else (void)])))


(define (print-pyret val)
  (when (not (equal? val nothing))
    (cond
      [(p:p-opaque? val) (racket-print val) (newline)]
      [(p:pyret-val? val) (printf "~a\n" (p:to-string val))]
      [else (void)])))

