#lang racket

; By: Andrei Petruk G00328108

; 10. Write a function lstq in Racket that takes as arguments
; two lists l and m of equal length and containing numbers.
; It should return d, the distance given by the sum of the
; square residuals between the numbers in the lists:

; This means take the ith element of m from the ith element
; of l and square the result for all i.
; Then add all of those to get d.
; For example: 

; > (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
;  54.61

;Define elstq function
(define (lstq x y) ; define operation function
  (if (or(null? x)(null? y)) ; check if x or y is null
     0 ; return 0 if null 
       (sumL (list (* (- (car x)(car y))
                      (- (car x)(car y))) ; square result and  pass to sumL
          (lstq (cdr x)(cdr y))))))

; Define function to add all values in list
(define (sumL sl)
 (if (null? sl)
    0 ; return 0 if null
     (+ (car sl)(sumL (cdr sl))))); sum all values in list

; Testing
; Defining lists
(define x (list 4.5 5.1 6.2 7.8))
(define y (list 1.1 -0.1 6.1 3.8))

(define a(list 4 7 9 0 4 6))
(define b(list 3 8 5 6 3 0))

;Tests displaying
(displayln '(Result for x y:))
(lstq x y)
(displayln '(Result for a b:))
(lstq a b)
