#lang racket/base

(require rackunit "work.rkt")

(check-equal? (list-facts 5) '(1 1 2 6 24 120))