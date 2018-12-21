#lang racket
(define (ends-e ls)
  (define (get-end wd)
    (string-ref wd (- (string-length wd) 1)))
  
  (define (w-ends-e wd)
    (eq? #\e (get-end wd)))
 
  
  (define (ends-e-iter ls-in ls-out)
    (if (eq? ls-in null)
        ls-out
        (if (w-ends-e (symbol->string (car ls-in)))
            (ends-e-iter (cdr ls-in) (append ls-out (list (car ls-in))))
            (ends-e-iter (cdr ls-in) ls-out))))
  
  (ends-e-iter ls null))