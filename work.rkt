#lang eopl

#|
Punto 1 list-set
|#
(define list-set
  (lambda (lista n x)
    (letrec
        (
         (list-set-aux
          (lambda (lst acc)
            (cond
              [(null? lst) (eopl:error "Desborde de indice")]
              [(= n acc) (cons x (cdr lst))]
              [else (cons (car lst) (list-set-aux (cdr lst) (+ 1 acc)))]
              )
            )
          )
         )
      (list-set-aux lista 0)
      )
    )
  )
#|
Punto 2 lista-tails
|#

(define list-tails
  (lambda (lista)
    0))

#|
Punto 3 repeat-list
|#

(define repeat-list
  (lambda (lista n)
    0))


#|
Punto 4 list-facts
|#

(define list-facts
  (lambda (n)
    0))




;;Exportación de las funciones, no modificar
(provide list-set)
(provide list-tails)
(provide repeat-list)
(provide list-facts)

