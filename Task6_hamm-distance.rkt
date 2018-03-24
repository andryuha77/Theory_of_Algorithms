#lang racket

;By: Andrei Petruk G00328108

;6. Write a function hamming-distance in Racket that takes
; two lists and returns the number of positions in which
; they diﬀer. For example:

;> (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
; 5

(define (hamming-distance ls lss); define function
  (if(or(null? (values ls))(null?(values lss))) ; if list ls or lss null
     0 ; nothing happend
      (if (= (car ls) (car lss)); if car of two lists equal
         (hamming-distance (cdr ls)(cdr lss)) ; keep cdr same
         (+ 1 (hamming-distance (cdr ls)(cdr lss)))))) ; else add 1

; Testing
; Defining 3 lists
(define a(list 1 0 1 0 1 1 1 0 ))
(define b(list 1 1 1 1 0 0 0 0 ))
(define c(list 1 0 1 0 1 1 0 0 ))

; displaying results
(display "Distance between list a and b: \n")
(hamming-distance a b)
(display "Distance between list c and b: \n")
(hamming-distance c b)

