#lang racket/base

(require rackunit "work.rkt")

(check-equal? (list-set '(a b c d) 2 '(1 2)) '(a b (1 2) d) "list-set caso 1")
(check-equal?  (list-set '(a b c d) 3 '(1 5 10)) '(a b c (1 5 10)) "list-set caso 2")