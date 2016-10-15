(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (sqrt x)
  (define (good-enough? guess prev-guess)
    (< (abs (- guess prev-guess)) 0.0001))

  (define (improve guess)
    (average guess (/ x guess)))

  (define (sqrt-iter guess prev-guess)
    (if (good-enough? guess prev-guess)
        guess
        (sqrt-iter (improve guess) guess)))

  (sqrt-iter 1.0 0.0))

(sqrt 25)
5.000000000053722

(sqrt 9)
3.000000001396984
