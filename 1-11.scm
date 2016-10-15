;; f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n>= 3

;; recursive
(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1))
                 (* 2 (f-rec (- n 2)))
                 (* 3 (f-rec (- n 3))))))

(f-rec 5)
25

;; iterative
;; f0 = 0
;; f1 = 1
;; f2 = 2
;; f3 = f2 + 2f1 + 3f0
;; f4 = f3 + 2f2 + 3f1

(define (f-iter n)
  (define (iter a b c count)
    (if (< count 3)
        a
        (iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))
  (iter 2 1 0 n))

(f-iter 5)
25
