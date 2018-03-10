# Theory_of_Algorithms CA 2018
My name is Andrei Petruk final year Software Development student.
This is CA 2018 for the Theory of Algorithms 2018 module.
The module is taught to undergraduate students at [GMIT](http://www.gmit.ie) in the Department of Computer Science and Applied Physics.
The lecturer is [Ian McLoughlin](https://ianmcloughlin.github.io).

## Instructions
CA 2018 Theory of Algorithms
The following exercises should be completed in the Racket programming language [1].
Remember to plan your work and make regular commits to your repository. The instructions
for submitting your work are given on the Moodle page. Note that “from scratch”
means using only cons, car, cdr, define, lambda, if, null, null?, cond, map, = and
the basic numerical operators (+, -, *, /, modulo). Other basic functions may be allowed,
but please confirm their use with the lecturer.

## Research
# [Racket](https://racket-lang.org/)
Racket is a general-purpose programming language as well as the world’s first ecosystem for developing and deploying new languages.
## Scheme

Scheme is a programming language that supports multiple paradigms, including functional programming and imperative programming, and is one of the two main dialects of Lisp.

## How to run

[Download Racket](http://download.racket-lang.org/), install, and then start DrRacket.

---
Open one of the 10 files/solutions from the repository. Click Run to execute it.
## 10 programming tasks with Research Descriptions and explanations
1. Write, from scratch, a function in Racket that uses a brute-force algorithm that takes
a single positive integer and return true if the number is a prime and false otherwise.
Call the function decide-prime.

A [prime number](http://mathforum.org/dr.math/faq/faq.prime.num.html) is a positive integer that has exactly two positive integer factors, 1 and itself. For example, if we list the factors of 28, we have 1, 2, 4, 7, 14, and 28. That's six factors. If we list the factors of 29, we only have 1 and 29. That's two factors. So we say that 29 is a prime number, but 28 isn't.

Brute-Force Algorithm: An algorithm in computer science which involves
trying every possible solution to determine if it is correct.
It is not necessarily the least efficient method, though it is often less
efficient then other algorithms.

#### Solution steps:
* Define a function not_divisible
* If given number is equal to 1 return true
* If remainder of n and d = 0 return false
* if p is equal to 1 pass p-1 into the not_divisible function
* Loop from 2 to 29 and display F or T 

The first taste of functional programming seems very unusual and not easy to use to it.

---

2. Write, from scratch, a function in Racket that takes a positive integer n0 as input
and returns a list by recursively applying the following operation, starting with the
input number.
ni+1 =
(
3ni + 1 if ni
is odd
ni ÷ 2 otherwise
End the recursion when (or if) the number becomes 1. Call the function collatz-list.
So, collatz-list should return a list whose first element is n0, the second element
is n1, and so on. For example:
```
> (collatz-list 5)
'(5 16 8 4 2 1)
> (collatz-list 9)
'(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)
> (collatz-list 2)
'(2 1)
```
#### Solution steps:
* Define functions for calculation in the case of odd and even numbers.

* Then using odd?  run required calculation.

* Testing collatz-list function wit number 6 and 50
---
3. Write, from scratch, two functions in Racket. The first is called lcycle. It takes a
list as input and returns the list cyclically shifted one place to the left. The second
is called rcycle, and it shifts the list cyclically shifted one place to the right.
For example:
```
> (lcycle (list 1 2 3 4 5))
'(2 3 4 5 1)
> (rcycle (list 1 2 3 4 5))
'(5 1 2 3 4)
```
#### Solution steps:
* [car and cdr](https://docs.racket-lang.org/reference/pairs.html) functions were used to complete this task

* Defining lcycle function
* Using (append (cdr m) to return elalements of the list excluding first one.
* Join first element to the end of the list
* Test lcycle function
* Define remove-last to remove last element in the list
* Define rcycle which return last elemtent and apend it to the start of  ther list.
* Test rcycle

---
4. Write a function sublsum in Racket that takes a list (of integers) as input and returns
a list of sublists of it that sum to zero. For this problem, you can use the
combinations built-in function. Note the order of the sublists and their elements
doesn’t matter. For example:
```
> (sublsum (list 1 2 3 4 -5))
'((2 3 -5) (-5 1 4))
> (sublsum (list 1 2 3 4 5))
'()
```
5. Write a function hamming-weight in Racket that takes a list l as input and returns
the number of non-zero elements in it. For example:
```
> (hamming-weight (list 1 0 1 0 1 1 1 0))
5
```
6. Write a function hamming-distance in Racket that takes two lists and returns the
number of positions in which they differ. For example:
```
> (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
5
```


### References:

[1] PLT Inc. Racket – a programmable programming language.

adapted from: https://racket-lang.org/

adapted from: https://en.wikipedia.org/wiki/Scheme_(programming_language)

adapted from: https://stackoverflow.com/questions/13791047/scheme-prime-numbers

adapted from: https://docs.racket-lang.org/reference/pairs.html



