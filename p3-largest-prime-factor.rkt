;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname p3-largest-prime-factor) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;(check-expect (largest-prime-factor 10) 5)

(check-expect (is-prime? 2 2) true)
(check-expect (is-prime? 2 3) true)
(check-expect (is-prime? 2 5) true)
(check-expect (is-prime? 2 11) true)
(check-expect (is-prime? 2 13) true)
(check-expect (is-prime? 2 17) true)
(check-expect (is-prime? 2 19) true)
(check-expect (is-prime? 2 23) true)

(check-expect (is-prime? 2 0) false)
(check-expect (is-prime? 2 1) false)
(check-expect (is-prime? 2 4) false)
(check-expect (is-prime? 2 6) false)
(check-expect (is-prime? 2 8) false)
(check-expect (is-prime? 2 9) false)
(check-expect (is-prime? 2 10) false)

(define (is-prime? y x)
  (cond
    [(= x 1) false]
    [(= x 2) true]
    [(= 0 (modulo x y)) false]
    [(> y (sqrt x)) true]
    [else (is-prime? (+ y 1) x)]
    )
  )

     
;(define (evenly-divisible? 
;(define (largest-prime-factor x)
;  5
; )