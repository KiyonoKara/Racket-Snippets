; myandmap : (X) [List-of X] [X -> Boolean] -> Boolean
; Returns whether the predicate is true for all elements in the list
; append the ? suffix to make this function explicitly return boolean values

(define (myandmap ls op?)
  (cond
    [(empty? ls) #true]
    [(cons? ls)
     (and (op? (first ls))
          (myandmap (rest ls) op?))]))
          
(check-expect (myormap (list 10 -5 -2) positive?) #true)
(check-expect (myormap (list) positive?) #false)
(check-expect (myormap (list "6" "24" "str") string?) #true)
(check-expect (myormap (list "false" #t) boolean?) #true)
