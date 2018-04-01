#lang racket

;By: Andrei Petruk G00328108

; 7. Write a function maj in Racket that takes three
; lists x, y and z of equal length and containing only
; 0’s and 1’s. It should return a list containing a 1
; where two or more of x, y and z contain 1’s, and 0 otherwise.
; For example:

; > (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
; '(0 0 0 1 0 1 1 1)

;maj function
(define (maj x y z)
    (if (null? x)
        '(); if null return empty
        (cond
          ((= (car x) (car y)); if car's of lists x and y have same value
           (cons (car x) (maj (cdr x) (cdr y) (cdr z)))) ;add x to new list
          ((= (car x) (car z))
           (cons (car x) (maj (cdr x) (cdr y) (cdr z))))   
          (else (cons (car y) (maj (cdr x) (cdr y) (cdr z)))); or y value added to new list
        )
    )
)
;Testing
; Defining lists
(define x (list 0 0 0 0 1 1 1 1))
(define y (list 0 0 1 1 0 0 1 1))
(define z (list 0 1 0 1 0 1 0 1))

(define a(list 1 0 1 0 1 1 1 0 ))
(define b(list 1 1 1 1 0 0 0 0 ))
(define c(list 1 0 1 0 1 1 0 0 ))

;Tests displaying
(displayln '(Result for x y z:))
(maj x y z)
(displayln '(Result for a b c:))
(maj a b c)