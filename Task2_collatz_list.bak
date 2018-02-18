#lang racket

;Write, from scratch, a function in Racket that takes a positive integer n0 as input
;and returns a list by recursively applying the following operation, starting with the
;input number.
;ni+1 = 3ni + 1 if ni
;is odd
;ni ÷ 2 otherwise
;End the recursion when (or if) the number becomes 1. Call the function collatz-list.
;So, collatz-list should return a list whose first element is n0, the second element
;is n1, and so on

;define calculation for odd numbers
(define (oddNum n)(+ (* 3 n) 1))

;define calculation for even numbers
(define (evenNum n)(/ n 2))

;define list
(define list '())

(define (collatz-list a)
  ;append to list
  (append list a)
  (if (= a 1)
      list
       ;if odd/even run predefined function
      (if (odd? a)
          (cons a (collatz-list (oddNum a)))
          (cons a (collatz-list (evenNum a))))))

;Test and display
(display "\nList for 6: ")
(collatz-list 6)
(display "\nList for 50: ")
(collatz-list 50)