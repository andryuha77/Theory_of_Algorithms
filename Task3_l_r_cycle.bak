#lang racket

;By: Andrei Petruk G00328108

;Write, from scratch, two functions in Racket. The first is called lcycle. It takes a
;list as input and returns the list cyclically shifted one place to the left. The second
;is called rcycle, and it shifts the list cyclically shifted one place to the right.
;For example:
;> (lcycle (list 1 2 3 4 5))
;'(2 3 4 5 1)
;> (rcycle (list 1 2 3 4 5))
;'(5 1 2 3 4)

; define lcycle
(define (lcycle m)
; return elalements of the list excluding first one
(append (cdr m)
        ;join first element to the end of the list
        (cons (car m)
               '())))
;test lcycle
(lcycle (list 1 2 3 4 5 19))