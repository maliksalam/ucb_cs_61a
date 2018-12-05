#lang racket
(define (last wd)
    (substring wd (- (string-length wd) 1)))

(define (first wd)
  (substring wd 0 1))

(define (bf wd)
    (substring wd 1))

(define (bl wd)
    (substring wd 0 (- (string-length wd) 1)))