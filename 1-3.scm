(define (larger-sum-square x y z)
  (define (square x) (* x x))
  (define (sum-squares x y) (+ (square x) (square y)))
  (cond ((and (<= x y) (<= x z)) (sum-squares y z))
        ((and (<= y x) (<= y z)) (sum-squares x z))
        (else (sum-squares x y))))

(larger-sum-square 5 5 3)
50

(larger-sum-square 2 4 5)
41
