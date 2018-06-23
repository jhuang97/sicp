(define (sqrt-iter guess x)
	(if (good-enough2? guess x)
		guess
		(sqrt-iter (improve guess x)
			x)))

(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
		(else else-clause)))

(define (sqrt-iter2 guess x)
	(new-if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x)
			x)))

(define (improve guess x)
	(average guess (/ x guess)))

(define (average x y)
	(/ (+ x y) 2))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (good-enough2? guess x)
	(< (abs (/ (- (square guess) x) x)) 0.001))

(define (square x)
	(* x x))

(define (sqrt2 x)
	(sqrt-iter 1.0 x))

(define (sqrt3 x)
	(sqrt-iter2 1.0 x))