(define (good-enough? before-guess guess)
  (< (abs (- before-guess guess)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x)
                 x)))
