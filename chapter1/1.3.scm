#lang scheme/base


(define (largest-two-numbers x y z) ( cond ((or (> x y) (> x z)) (cond ((> y z) (values x y)) (else (values x z) ) ) ) (else (values y z)) ) )


(define (sum-of-largest-two-numbers x y z) (let-values ( [(x1 y1) (largest-two-numbers x y z)] ) (+ x1 y1) ))


(sum-of-largest-two-numbers 10 15 3)