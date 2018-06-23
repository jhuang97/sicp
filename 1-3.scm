(define (sum-of-squares x y)
	(+ (* x x) (* y y)))

(define (max3 a b c)
	(cond ((and (>= a b) (>= a c)) a)
		((and (>= b a) (>= b c)) b)
		(else c)
		))

(define (middle a b c)
	(cond ((or (>= a b c) (>= c b a)) b)
		((or (>= a c b) (>= b c a)) c)
		(else a)
		))

(define (proc13 a b c)
	(sum-of-squares (max3 a b c) (middle a b c)))