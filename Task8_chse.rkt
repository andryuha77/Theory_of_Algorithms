#lang racket

;By: Andrei Petruk G00328108

; 8. Write a function chse in Racket that takes three lists
; x, y and z of equal length and containing only 0’s and 1’s.
; It should return a list containing the elements of y in the
; positions where x is 1 and the elements of z otherwise.
; For example:
; > (chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
; '(0 1 0 1 0 0 1 1)

;maj function
(define (chse x y z)
    (if (null? x)
        '(); if null return empty
        (cond
          ((= (car x) 1); if car's of lists x and y have same value
           (cons (car y) (chse (cdr x) (cdr y) (cdr z)))) ;add y to new list and progress with cchse   
          (else (cons (car z) (chse (cdr x) (cdr y) (cdr z)))); or z value added to new list and progress with cchse
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
(displayln '(chse Result for x y z:))
(chse x y z)
(displayln '(chse Result for a b c:))
(chse a b c)