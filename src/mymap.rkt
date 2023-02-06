;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname MyMap) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; mymap : (X Y) [List-of X] [X -> Y] -> [List-of Y]
; applies a function to every element in a list and produces
; a list of the results like map

(define (mymap op lon)
  (cond
    [(empty? lon) lon]
    [(cons? lon)
     (cons
      (op (first lon))
      (mymap op (rest lon)))]))

(check-expect (mymap add1 '()) '())
(check-expect (mymap add1 (list 1 2 3)) (list 2 3 4))
(check-expect (mymap number->string (list 1 2 3)) (list "1" "2" "3"))
(check-expect (mymap  string->number (list "1" "2" "3")) (list 1 2 3))