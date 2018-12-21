#lang racket
(define (ordered? list)
  (define (ordered?-iter temp-list)
    (if (= 1 (length temp-list))
        #t
        (if (< (car temp-list) (list-ref temp-list 1))
            (ordered?-iter (cdr temp-list))
            #f)))
  (ordered?-iter list))
    