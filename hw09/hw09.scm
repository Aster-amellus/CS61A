(define (curry-cook formals body) 
  (if (null? formals)
  body
  `(lambda (,(car formals)), (curry-cook (cdr formals) body))
  )
)

(define (curry-consume curry args)
  (if (null? args)
  curry
  (curry-consume (curry (car args)) (cdr args))
  )
  )

(define-macro (switch expr cases)
  (switch-to-cond (list 'switch expr cases)))

(define (switch-to-cond switch-expr)
  (cons `cond
        (map
         (lambda (case) `(equal? ,(car (cdr switch-expr)) ,(car case)) (cdr case)))
         (car (cdr (cdr switch-expr)))))

(define (min x y)
  (if (< x y)
      x
      y))

(define (count f n i)
  (if (= i 0)
      0
      (+ (if (f n i)
             1
             0)
         (count f n (- i 1)))))

(define (is-factor dividend divisor)
  (if (equal? (modulo dividend divisor) 0)
      #t
      #f))

(define (switch-factors n)
  (switch (count is-factor n n) ((1 "one") (2 "prime") ((> (count is-factor n n) 2) "composite")))
  )
