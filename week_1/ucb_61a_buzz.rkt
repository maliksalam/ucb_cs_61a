#lang racket
(define (buzz x)
  (define (contains7 x)
    (string-contains? (number->string x) "7"))
  (cond ((= (modulo x 7) 0) "buzz")
        ((contains7 x) "buzz") 
        (else x)))