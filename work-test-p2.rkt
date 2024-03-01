#lang racket/base

(require rackunit "work.rkt")

(check-equal? (list-tails '(1 2 3 4 5)) '((1 2 3 4 5) (2 3 4 5) (3 4 5) (4 5) (5)))
(check-equal? (list-tails '(1 a (e 4) 5 v)) '((1 a (e 4) 5 v) (a (e 4) 5 v) ((e 4) 5 v) (5 v) (v)))