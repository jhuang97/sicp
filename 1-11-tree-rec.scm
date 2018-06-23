(define (frec n)
	(cond ((< n 3) n)
		(else (+ (frec (- n 1)) (* 2 (frec (- n 2))) (* 3 (frec (- n 3)))))))

(define (fi f1 f2 f3 n)
	(if (< n 3) f1
		(fi (+ f1 (* 2 f2) (* 3 f3)) f1 f2 (- n 1))))

(define (fiter n)
	(if (< n 3) n
		(fi 2 1 0 n)))