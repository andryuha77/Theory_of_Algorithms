; Write, from scratch, a function in Racket
; that uses a brute-force algorithm that takes a single positive integer
; and return true if the number is a prime and false otherwise.
; Call the function decide-prime.

; Scheme prime numbers

; Brute-Force Algorithm: An algorithm in computer science which involves
; trying every possible solution to determine if it is correct.
; It is not necessarily the least efficient method, though it is often less
; efficient then other algorithms.

; https://stackoverflow.com/questions/13791047/scheme-prime-numbers


#lang racket

(define (decide-prime p)
  ; defines a function not_divisible
  (define (not_divisible n d)
    ; if d is equal to 1 return true
    (cond
     ((= d 1) #true)
     ; if remainder of n and d = 0 return false
     (else (if(= (remainder n d) 0)
          #false
          (not_divisible n (- d 1))))))
  ; if p is equal to 1 pass p-1 into the not_divisible function 
  (if (= p 1)
      #true
      (not_divisible p (- p 1))))

; Brute force check for numbers 2-30
(define i 2) ; setting range start
(for [(m (in-range i 30))] ; For/List for checking each number
  (display "\n")(display m)(display " is prime number: ")  
  (display (decide-prime m))
  )

