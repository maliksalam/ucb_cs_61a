#lang racket
(define (switch sentence)
  (define (switch-iter sentence-in sentence-out)
    (if (eq? sentence-in null)
        sentence-out
        (cond ((eq? (car sentence-in) 'You)
               (switch-iter (cdr sentence-in) (append sentence-out (list 'I))))
              ((eq? (car sentence-in) 'you)
               (switch-iter (cdr sentence-in) (append sentence-out (list 'me))))
              ((or (eq? (car sentence-in) 'me) (eq? (car sentence-in) 'I))
               (switch-iter (cdr sentence-in) (append sentence-out (list 'you))))
              (else
               (switch-iter (cdr sentence-in) (append sentence-out (list (car sentence-in))))))))
  (switch-iter sentence null))