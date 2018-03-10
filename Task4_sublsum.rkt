#lang racket

;By: Andrei Petruk G00328108

;Write a function sublsum in Racket that takes a list (of integers)
;as input and returns a list of sublists of it that sum to zero.
;For this problem, you can use the combinations built-in function.
;Note the order of the sublists and their elements doesn’t matter.
;For example:

;> (sublsum (list 1 2 3 4 -5))
;'((2 3 -5) (-5 1 4))
;> (sublsum (list 1 2 3 4 5))
;'()

;define sublsum function
(define (sublsum list);
  ;check if sum of list is = 0
  (zero? (apply + list)));

;define 3 lists
(define a(list 1 2 3 4 5 -2 -4))
(define b(list 1 2 3 4 -5 ))
(define c(list 1 2 3 4 -5 -2 3 7))

;Test and display only if 0
(display "Sublists for list a: \n")
(filter sublsum (combinations a))
(display "Sublists for list b: \n")
(filter sublsum (combinations b))
(display "Sublists for list c: \n")
(filter sublsum (combinations c))