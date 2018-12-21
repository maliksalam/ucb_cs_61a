#lang racket
(define (or-test)
  (display "or is a regular procedure if you get an error\n")
  (cond
   ((or
     (= 0 0)
     (= '(a) 9))
   (display "Nope: or is a special form"))))

(define (and-test)
  (display "and is a regular procedure if you get an error\n")
  (cond
   ((eq? #f
         (and
          (= 0 1)
          (= '(a) 9)))
   (display "Nope: and is a special form"))))