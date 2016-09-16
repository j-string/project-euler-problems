#lang racket


(define (even-fibonacci-numbers x y z)
  (cond
    [(> (+ x y) z) 0]
    [(= 0 (modulo (+ x y) 2)) (+ x y (even-fibonacci-numbers y (+ x y) z))]
    [else (even-fibonacci-numbers y (+ x y) z)]
    )
  )

(even-fibonacci-numbers 1 1 4000000)