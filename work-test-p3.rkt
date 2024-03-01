#lang racket/base

(require rackunit "work.rkt")

(check-equal? (repeat-list '(1 2 3) 3) '((1 1 1) (2 2 2) (3 3 3)))
(check-equal?  (repeat-list '(1 (2 3) 3 4 (1 2)) 2) '((1 1) ((2 3) (2 3)) (3 3) (4 4) ((1 2) (1 2))))