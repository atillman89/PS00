;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname PS00) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(require 2htdp/image)

;; EX1 - compute the number of seconds in a leap year = 366 days
(* 366 (* 24 (* 60 60)))

;; EX2 - test if 100/3 is greater than (100+3)/(3+3)
(> (/ 100 3) (/ (+ 100 3) (+ 3 3)))

;; EX3 - definition of function that converts temperature from F to C
; f->c : Number -> Number
; GIVEN: a temperature in degrees Fahrenheit as an argument
; RETURNS: the equivalent temperature in degrees Celcius.
; Examples:
; (f->c 32)  => 0
; (f->c 100) => 37.77777777777778
(define (f->c f)
  (* (- f 32) (/ 5 9)))
(f->c 32)
(f->c 100)
(f->c 0)
(f->c 87)

;; EX4 - definition of tip funciton that calculates tip
; tip : Number Number -> Number
; GIVEN: the amount of the bill in dollars and the percentage of tip
; RETURNS: the amount of the tip in dollars.
; Examples:
; (tip 10 0.15)  => 1.5
; (tip 20 0.17)  => 3.4
(define (tip bill per)
  (* bill per))
(tip 10 0.15)
(tip 20 0.17)
(tip 50 0.20)
(tip 100 0.22)

;; EX5 - define sq (square) function
; sq : Number Number -> Number
; GIVEN: a number
; RETURNS: the square of the number
; Examples:
; (sq 2)   => 4
; (sq -3)  => 9
(define (sq n)
  (* n n))
(sq 2)
(sq -3)
(sq 0)
(sq 9)

;; EX6 - define + quadratic-root function
; quadratic-root : Number Number Number -> Number
; GIVEN: coefficiencts a, b and c of a quadratic equation
; RETURNS: one of the solutions of that equation
; Examples:
; (quadratic-root 1 -12 36)  => 6
; (quadratic-root 1 0 -16)   => 4
(define (quadratic-root a b c)
  (/ (+ (- 0 b) (sqrt (- (sq b)
                    (* 4 a c))))
     (* 2 a)))
(quadratic-root 1 -12 36)
(quadratic-root 1 0 -16)
(quadratic-root 1 6 9)
(quadratic-root 1 1 -12)

;; EX7 - circumference formula
; circumference : Number -> Number
; GIVEN: the positive radius r of a circle 
; RETURNS: the circle's circumference, using the formula 2 * pi * r.
; Examples:
; (circumference 1)  =>  6.283185307179586 
; (circumference 0)  =>  0
(define (circumference r)
  (* 2 pi r))
(circumference 1)
(circumference 0)
(circumference (/ 2 pi))

;; EX8 - circ-area function
; circ-area : Number -> Number
; GIVEN: the postive radius r of a circle
; RETURNS: the circ's area, using the formula pi * r^2
; Examples:
; (circ-area 1)  => 3.141592653589793
; (circ-area 5)  => 78.53981633974483
; (circ-area 7)  => 153.93804002589985
(define (circ-area r)
  (* pi r r))
(circ-area 1)
(circ-area 5)
(circ-area 7)

;; EX9 - remainder vs modulo, even function
(remainder 10 3)
(modulo 10 3)
(remainder -10 3)
(modulo -10 3)
(remainder 10 -3)
(modulo 10 -3)
; even? : Number -> Boolean
; GIVEN: a number
; RETURNS: boolean value stating if the number is even or not
; Examples:
; (even 2)   => True
; (even -5)  => False
; (even 0)   => True
(define (even n)
  (= (remainder n 2) 0))
(even -5)
(even 0)
(even 4)
(even -4)

;; EX10 - take three numbers and return sum of larger two
; large-sum : Number Number Number -> Number
; GIVEN: three numbers x, y and z
; RETURNS: the sum of the larger two numbers
; Examples:
; (large-sum 0 0 1)  => 1
; (large-sum 1 2 3)  => 5
; (large-sum 3 4 4)  => 8
(define (large-sum x y z)
  (cond
    [(and (<= x y) (<= x z)) (+ y z)]
    [(and (<= y z) (<= y x)) (+ x z)]
    [(and (<= z x) (<= z y)) (+ x y)]))
(large-sum 0 0 1)
(large-sum 1 2 3)
(large-sum 4 3 4)
(large-sum 5 5 5)

;; EX11 - contracts for posn functions
; posn-function : Number Number -> posn

;; EX12
(make-posn 5 3)
(posn? 5)
(posn? true)
(posn? (make-posn 2 1))
(posn-x (make-posn 8 5))
(posn-y (make-posn 42 15))

;; EX13
(make-posn true false)
(posn-x (make-posn true false))

;; EX14 - which functions will be made when we execute:
;;        (define-struct student (id name major))
;  No functions are made, only a data structure (student)

;; EX15 - comments for definition of "student" in EX14
(define-struct student (id name major))
;; a student is a (make-studdent String String)
;; It represents a student in the school.
;; Interpretation:
;;   name ... the student's name
;;   major ... the student's intended major

;; EX16 - load image and play with functions
(define my-image (bitmap "b0085.gif"))
(above my-image my-image)
(beside my-image my-image my-image)

;; EX17 - series of rectangles
(rectangle 2 4 "solid" "blue")
(rectangle 4 8 "solid" "blue")
(rectangle 8 16 "solid" "blue")
(rectangle 16 32 "solid" "blue")

;; EX18 - function for series of rectangles
(define (rec-sequence n)
  (rectangle (expt 2 n) (expt 2 (+ n 1)) "solid" "blue"))
(rec-sequence 5)
(rec-sequence 6)
(rec-sequence 7)

;; EX19 - second rectangle series
(define (rel-rec-sequence width propn)
  (rectangle width ( * width propn) "solid" "blue"))
(rel-rec-sequence 5 2)
(rel-rec-sequence 10 1)
(rel-rec-sequence 2 3)
(rel-rec-sequence 6 .5)
; rec-sequence-2
; I don't understand these instructions

;; EX20 - human shape
;(define (make-human height weight)
;  (define
;  (empty-scene (* weight 2) (* height 1.5))
;  (circle (height/5) "solid" "yellow")
;  (rectangle (we
; skipping this exercise for now

;; EX21 - draw person
; skipping this exercise for now

;; EX22 - numbers 1 to 5
(cons 1 (cons 2 (cons 3 (cons 4 (cons 5 empty)))))

;; EX23 - 5 boolean list
(cons true (cons false (cons true (cons false (cons true empty)))))

;; EX24 - product list
(define (product lst)
  (cond
    ([empty? lst] 1)
    (else (* (first lst) (product (rest lst))))))
(product empty)
(product (list 0))
(product (list 1 2 3))

;; EX25
; true-test : Boolean List-of-Booleans -> Boolean
; GIVEN: a list of boolean values
; RETURNS: boolean value expressing if all values in the list are true
; Examples:
; (true-test true)        => true
; (true-test false true)  => false
; (true-test true true)   => true
(define (true-test lst)
  (cond
    ([empty? lst] true)
    (else (true-test (rest lst))))) ; something needs to be added here
(true-test empty)
(true-test (cons false empty))
(true-test (cons true empty))
(true-test (cons false empty))
(true-test (list true true false))
(true-test (list true true false))



