(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (cube-root x)
  (define (good-enough? guess prev-guess)
    (< (abs (- guess prev-guess)) 0.0001))

  (define (improve guess)
    (/ (+ (/ x (square guess)) (* 2 guess))
       3))

  (define (iter guess prev-guess)
    (if (good-enough? guess prev-guess)
        guess
        (iter (improve guess) guess)))

  (iter 1.0 0.0))

(cube-root 27)
3.0000000000000977

(cube-root 1953125)
125.0
