#lang racket

;By: Andrei Petruk G00328108

; 9. Write a function sod2 in Racket that takes three lists
; x, y and z of equal length and containing only 0’s and 1’s.
; It should return a list containing a 1 where the number
; of 1’s in a given position in x, y and z contains
; an odd nubmer of 1’s, and 0 otherwise.

; For example:

; > (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
;  '(0 1 1 0 1 0 0 1)

;Define sod2 function
(define (sod2 x y z)
    (if (null? x)
        '(); if null return empty
        (cond
          ((= 0 (modulo (+(car x) (car y) (car z))2)); if modulo of 3 lists sum = 0
           (cons 0 (sod2 (cdr x) (cdr y) (cdr z)))) ;add 0 to new list        
           (else (cons 1 (sod2 (cdr x) (cdr y) (cdr z)))); else 1 value added to new list
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
(sod2 x y z)
(displayln '(Result for a b c:))
(sod2 a b c)