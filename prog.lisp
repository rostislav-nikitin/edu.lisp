;(write-line "Hello World")
;(write 2345)
(+ 5 10)
'(this is quoted list)
;Variables
(write-line "Variables")
(defvar x 110)
(format t "x = ~d~%" x)
(setq y 130)
(setq z 55)
;(format t "x = ~d~%" y)
;(write-line x)

;let & prog (local variables)
(write-line "let & prog")
;let & prog

(let ((x `(1 2 a)) (y 23) (z 1))
(format t "x = ~a, y = ~d z = ~d~%" x y z))

(
  prog
    ((x `(1 2 43)) (y 5))
    (format t "x = ~a~%" x)
    (format t "y = ~d~%" y)
    (format t "y = ~d~%" y)
)

(write-line "cond")
; cond
(setq x 20)
(cond ((>= x 50) (format t "is more or eq 50~%"))
  ((>= x 25) (format t "is more or eq 25~%"))
  (t (format t "it is other number. ~%")))

(write-line "if-else")
(setq x 59)
(if(< x 30) (format t "x is less tham 30~%")
  (format t "x is more or equal than 30~%"))

(write-line "when")
(setq x 99)
(when(< x 100) (format t "x < 100~%"))

(write-line "case")
; case
(setq x 50)
(case x
  (20 (format t "x = 20~%"))
  (40 (format t "x = 40~%"))
  (otherwise (format t "x is other number~%"))
)

; do-loop
(write-line "do-loop")
(do
  ((x 0 (+ 1 x)) (y 1 (* 2 y)))
  ((> x 10) 1)

  (format t "2^~d = ~d ~%" x y)
)

; dotimes-loop
(write-line "dotimes-loop")
(dotimes (x 12) (format t "~d^2=~d~%" x (* x x)))

; dolist-loop
(write-line "dolist-loop")
(dolist (x `(1 2 5 7 9)) (format t "~d^2=~d~%" x (* x x)))

;loop
(write-line "loop")
(setq x 0)
(
  loop
  (setq x (+ x 1))
  (format t "x=~d~%" x)
  (if(= x 10) (return x))
)

;for-loop
(write-line "for-loop")

(loop for x from 1 to 10
   do (format t "~d is x~%" x))

(loop for x in `(1 5 33 2 6)
   do (format t "~d is x [from the set]~%" x))


;defun
(defun sum (a b) (+ a b))
 
(setq x (sum 2 4))
(format t "sum(2 4) = ~d~%" x)
(setq x(sum 5 6))
(format t "sum(2 4) = ~d~%" x)


;optional
(defun printnums (a b &optional c d)
  (format t "~d ~d ~d ~d ~%" a b c d))

(printnums 2 3 4)

;key
(defun printnums_key (&key a b c d)
  (format t "~d ~d ~d ~d~%" a b c d))

(printnums_key :d 10 :b 7 :a 1 :c 9)

;rest
(defun printnums_rest (a b &rest c)
  (format t "~d ~d" a b)
  (loop for x in c do
	(format t " ~d" x))
  (format t "~%"))


(printnums_rest 1 5 3 1 5 6 1 4)

;mapcar
(write (mapcar '* '(2 5 7) '(2 3 4)))
(format t "~%")
(write (mapcar '+ '(2 5 7) '(2 3 4)))
(format t "~%")

;lambda
(write ((lambda (a b) (* b (+ a b))) 3 4))
(format t "~%")

;cons

(write (cons 'a 'b))
(format t "~%")
(write (cons 'a nil))
(format t "~%")

;car
(write (car (cons 'a (cons 'a 'b))))
(format t "~%")

;cdr
(write (cdr (cons 'a (cons 'a (cons 'a 'b)))))
(format t "~%")

;list
(write (caaddr (list 'a 'b (list 'c 'd) )))
(format t "~%")

(write (last (list 'a 'b 'c 'd 'e 'f 'g)))
(format t "~%")

(write (reverse (list 'a 'b 'c 'd 'e 'f 'g)))
(format t "~%")

(write (append (list 'a 'b 'c 'd 'e 'f 'g) `(k l m) `(x y z)))
(format t "~%")

;vectors

(write (vector 'a 'b 'c 'd))
(format t "~%")

(write #(a b c d))
(format t "~%")

(setq v_size 5)
(setq v (make-array v_size))
(dotimes (i v_size)
  (setf (aref v i) (* i i)))
(write v)

(format t "~%")

;structs

(defstruct home
  levels
  people
  name)

(setq myhome (make-home :levels 9 :people 36 :name "Slava"))

(write myhome)
(format t "~%")
