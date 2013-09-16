#lang racket/base

(require
 (rename-in "../lang/racket-ffi/ast.rkt" [%PYRET-PROVIDE ast-module])
 "../lang/runtime.rkt"
 (rename-in "tc.arr" [%PYRET-PROVIDE tc-module]))

(define tc-fun (p:get-field p:dummy-loc tc-module "tc"))
(define to-pyret (p:get-field p:dummy-loc ast-module "to-pyret"))
(define to-racket (p:get-field p:dummy-loc ast-module "to-native"))

(define (tc ast)
  (to-racket (p:apply-fun tc-fun p:dummy-loc (to-pyret ast))))
