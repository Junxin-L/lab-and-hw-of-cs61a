(define (my-filter func lst)
    (if (null? lst)
        nil
        (if (equal? #t (func (car lst)))
            (append (list (car lst)) (my-filter func (cdr lst)))
            (append (my-filter func (cdr lst)))
            )
        )
    )

(define (interleave s1 s2) 'YOUR-CODE-HERE
    (if (null? s1)
        s2
        (if (null? s2)
            s1
            (append (cons(car s1) nil) (cons (car s2) nil) (interleave (cdr s1) (cdr s2)))
            )
        )
    )

(define (accumulate merger start n term)
  (if (= n 1)
      (merger start (term 1))
      (merger (term n) (accumulate merger start (- n 1) term))
      )
  )

(define (del_rep x lst)
            (if (null? lst)
                nil
                (if (= x (car lst))
                    (append nil (del_rep x (cdr lst)))
                    (append (cons (car lst) nil) (del_rep x (cdr lst)))
                )
            )
        )

(define (no-repeats lst)

        
        (if (null? lst)
            nil
           (append (cons (car lst) nil) (no-repeats (del_rep (car lst) (cdr lst))))
        )
    
)
