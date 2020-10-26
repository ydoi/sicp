(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
  (< (abs (- guess x)) 0.001))

(define (curt-iter guess x)
    (if (good-enough? guess (improve guess x))
        guess
        (curt-iter (improve guess x) x)))

