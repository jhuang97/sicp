(define (cbrt-iter guess x)
	(if (good-enough2? guess x)
		guess
		(cbrt-iter (improve guess x)
			x)))

(define (improve guess x)
	(/ (+
		(* guess 2)
		(/ x (* guess guess)))
		3))

(define (good-enough2? guess x)
	(< (abs (/ (- (* guess guess guess) x) x)) 0.001))


(define (cbrt x)
	(cbrt-iter 1.0 x))