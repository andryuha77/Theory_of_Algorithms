#lang racket

;By: Andrei Petruk G00328108

;5. Write a function hamming-weight in Racket
; that takes a list l as input and returns
; the number of non-zero elements in it.
; For example:

;> (hamming-weight (list 1 0 1 0 1 1 1 0))
; 5

(define (hamming-weight ls); define hamming function
  (if (null? ls) ; if list null
     0 ; nothing happend
      (if(= (car ls) 0); if car of the list = 0
         (hamming-weight (cdr ls)) ; keep cdr same
         (+ 1 (hamming-weight (cdr ls)))))) ; else add 1

; Testing
; Defining 3 lists
(define a(list 1 0 1 0 1 1 1 ))
(define b(list 1 0 0 1 1 0 0 0 1 1 1 ))
(define c(list 1 0 1 0 1 1 0))
; displaying results
(display "Number of non-zero elements in list a: \n")
(hamming-weight a)
(display "Number of non-zero elements in list b: \n")
(hamming-weight b)
(display "Number of non-zero elements in list c: \n")
(hamming-weight c)
