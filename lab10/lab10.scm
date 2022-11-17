(define (over-or-under num1 num2) 
    (cond
        ((< num1 num2) -1) 
        ((= num1 num2) 0)
        ((> num1 num2) 1)
        )
    )

(define (make-adder num) 
    (define (add inc) (+ num inc))
    add)

(define (composed f g) 
    (define (com x) (f (g x)))
    com)

(define lst 
   (cons (cons 1 nil) 
         (cons 2 
                 (cons (cons 3 (cons 4 nil)) 
                       (cons 5 nil)))
         )
     )

(define (remove item lst) 'YOUR-CODE-HERE)
