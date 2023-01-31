; myormap : (X) [List-of X] [X -> Boolean] -> Boolean
; Returns whether the predicate is true for any element in the list
; Use suffix ? to explicitly return a boolean value

(define (myormap ls op?)
  (cond
    [(empty? ls) #false]
    [(cons? ls)
     (or (op? (first ls))
         (myormap (rest ls) op?))]))
         
(check-expect (myormap (list 10 -5 -2) positive?) #true)
(check-expect (myormap (list) positive?) #false)
(check-expect (myormap (list "6" "24" "str") string?) #true)
(check-expect (myormap (list "false" #t) boolean?) #true)
