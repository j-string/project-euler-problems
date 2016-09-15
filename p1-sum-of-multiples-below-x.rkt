#lang racket

(define (multiples_below_x x)
  (let ([y (- x 1)])
    (cond
      [(= 0 y) 0]
      [(= 0 (modulo y 5)) (+ y (multiples_below_x y))]
      [(= 0 (modulo y 3)) (+ y (multiples_below_x y))]
      [else (multiples_below_x y)]
      )
    )
  )
  
(multiples_below_x 10)

(multiples_below_x 100)

(multiples_below_x 1000)
