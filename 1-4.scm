;; Observe that our model of evaluation allows for combinations whose operators
;; are compound expressions. Use this observation to describe the behavior of the
;; following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 10 -5)
15

;; <- implies evalutation of what's inside
;; so when you call (a-plus-abs-b 10 -5)
;; the (if .. ..) inside the () is evaluated and returns + or -
;; then the outer () get evaluated resulting in (+/- a b)
