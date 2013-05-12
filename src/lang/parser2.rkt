#lang racket/base

(provide (all-defined-out))
(require
  (for-syntax racket/base)
  syntax/parse
  syntax/strip-context
  "ast.rkt")

;; borrowed from dyoo's brainfudge
(define (loc stx)
    (srcloc (syntax-source stx)
            (syntax-line stx)
            (syntax-column stx)
            (syntax-position stx)
            (syntax-span stx)))


(define-syntax-rule (define-syntax-errors-for (id ...))
  (define-syntaxes (id ...)
    (values (lambda (stx) #'(raise-syntax-error #f (format "~a used out of context") 'id)) ...)))

(define-syntax-errors-for
  (program imports block stmt))

(define (parse-program stx)
  (syntax-parse (replace-context #'here stx)
    #:literals (program imports)
    [(program (imports import ...) body "")
     (s-prog (loc stx)
             (map parse-import (syntax->datum #'(import ...)))
             (parse-block #'body))]))

(define (parse-import stx)
  (syntax-parse stx
    [_ "nyi"]))

(define (parse-block stx)
  (syntax-parse stx
    #:literals (block)
    [(block stmt ...)
     (s-block (loc stx)
              (map parse-stmt-wrapper (syntax->datum #'(stmt ...))))]))

(define (parse-stmt-wrapper stx)
  (syntax-parse stx
    #:literals (stmt)
    [(stmt s) (parse-stmt #'s)]))

(define (parse-stmt stx)
  (syntax-parse stx
    #:literals (
      var-expr
      let-expr
      fun-expr
      data-expr
      do-expr
      assign-expr
      when-expr
      try-expr
      expr
    )
    [(expr e) (parse-expr #'e)]))

(define (parse-expr stx)
  (syntax-parse stx
    #:literals (
      obj-expr 
      list-expr 
      app-expr 
      id-expr 
      prim-expr
      dot-expr 
      bracket-expr 
      dot-method-expr 
      bracket-method-expr
      cond-expr 
      lambda-expr 
      extend-expr 
      left-app-expr
    )
    [(prim-expr e) (parse-prim #'e)]))

(define (parse-prim stx)
  (syntax-parse stx
    #:literals (
      string-expr
    )
    [(string-expr s) (s-str (loc stx #'s))]))

(require "tokenizer.rkt")
(parse-program (get-syntax 'foo (open-input-string "")))
