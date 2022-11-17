(define (cddr s) (cdr (cdr s)))

(define (cadr s) 
    (car (cdr s)))

(define (caddr s) 
    (car (cdr (cdr s))))

(define (ordered? s) 
    (cond ((null? s) #t)
          ((null? (cdr s)) #t)
          (else 
                (if (> (car s) (cadr s))
                  #f
                  (ordered? (cdr s))))
        )
    )

(define (square x) (* x x))

(define (pow base exp) 
    (if (= 1 base)
        1
        (if (even? exp)
        (square (pow base (/ exp 2)))
        (if (= 1 exp)
            base
            (* base (pow base (- exp 1)))
            )
        )
    )
)
