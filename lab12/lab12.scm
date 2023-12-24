(define (if-program condition if-true if-false)
  'YOUR-CODE-HERE)

(define (pow-expr n p) 'YOUR-CODE-HERE)

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (swap expr)
  (let ((op (car expr))
        (first (car (cdr expr)))
        (second (caddr expr))
        (rest (cdr (cddr expr))))
    'YOUR-CODE-HERE))
