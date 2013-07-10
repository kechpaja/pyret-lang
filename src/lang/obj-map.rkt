#lang whalesong

(provide (all-defined-out))

(define make-obj-map make-immutable-hash)
(define obj-map-ref hash-ref)
(define obj-map-set hash-set)
(define (obj-map-set* obj-map args)
  (foldr (lambda (pair obj-map) (obj-map-set obj-map (car pair) (cdr pair)))
         obj-map
         args))
(define (obj-map-keys obj-map)
  (filter string? (hash-keys obj-map)))
(define obj-map-has-key? hash-has-key?)
(define (obj-map-map h f)
  (map 
    (lambda (k)
      (f k (hash-ref h k)))
    (filter string? (hash-keys h))))
(define obj-map-count hash-count)

