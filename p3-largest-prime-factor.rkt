
#lang racket/base

(require test-engine/racket-tests)

;(check-expect (largest-prime-factor 10) 5)

(check-expect (is-prime? 2) true)
(check-expect (is-prime? 3) true)
(check-expect (is-prime? 5) true)
(check-expect (is-prime? 11) true)
(check-expect (is-prime? 13) true)
(check-expect (is-prime? 17) true)
(check-expect (is-prime? 19) true)
(check-expect (is-prime? 23) true)

(check-expect (is-prime? 0) false)
(check-expect (is-prime? 1) false)
(check-expect (is-prime? 4) false)
(check-expect (is-prime? 6) false)
(check-expect (is-prime? 8) false)
(check-expect (is-prime? 9) false)
(check-expect (is-prime? 10) false)
(check-expect (is-prime? 23) true)
(check-expect (is-prime? 29) true)
(check-expect (is-prime? 455) false)


(define (is-prime? x)
  (is-prime-helper? x 2)
  )


(define (is-prime-helper? x y)
  (cond
    [(= x 1) false]
    [(= x 2) true]
    [(= 0 (modulo x y)) false]
    [(> y (sqrt x)) true]
    [else (is-prime-helper? x (+ y 1))]
    )
  )




     



(define (largest-prime-factor x)
  (largest-prime-factor-helper x 2)
 )

(define (largest-prime-factor-helper x y)
  (cond
    [(> y (/ x 2)) x]
    [(= 0 (modulo x y)) (show y)]
;        (cond
;          [(> y (largest-prime-factor-helper x (+ 1 y))) y]
;          [else (largest-prime-factor-helper x (+ 1 y))]
;          )
;        ]
    [else (largest-prime-factor-helper x (+ 1 y))]
    )
  )



(largest-prime-factor 13195)