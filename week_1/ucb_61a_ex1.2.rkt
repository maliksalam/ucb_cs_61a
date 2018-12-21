#lang racket
(define (square-list l)
  
  (define (append-square l-out n)
    (append l-out (list (sqr (list-ref l n)))))
  
  (define (square-list-iter n l-out)
    (if (= n (length l))
        l-out
        (square-list-iter (+ 1 n) (append-square l-out n))))
  (square-list-iter 0 '()))