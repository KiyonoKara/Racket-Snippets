;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname MyMapFoldr) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; (X Y) [X -> Y] [List-of X] -> [List-of Y]
; takes in a function and applies it to every
; element in the supplied list
(define (mymapfoldr func lox)
  (foldr
   (λ (list-element old-result)
     (cons (func list-element)
           old-result))
   '()
   lox))

(check-expect (mymapfoldr add1 '()) '())
(check-expect (mymapfoldr add1 (list 1 2 3 4)) (list 2 3 4 5))
(check-expect (mymapfoldr sub1 (list 1 2 3 4)) (list 0 1 2 3))
(check-expect (mymapfoldr string->number (list "15" "20" "25")) (list 15 20 25))