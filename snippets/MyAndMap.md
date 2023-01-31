## MyAndMap

Manual implementation of Racket's `andmap` function. 
- Use a list / cons
- Use a boolean function or logical operator 

```racket 
; myandmap : (X) [List-of X] [X -> Boolean] -> Boolean
; Returns whether the predicate is true for all elements in the list
; append the ? suffix to make this function explicitly return boolean values

(define (myandmap ls op?)
  (cond
    [(empty ls) #true]
    [(cons ls)
     (and (op (first ls))
          (myandmap (rest ls) op?))]))
```  
### Examples  
```racket 
(check-expect (myandmap (list 10 5 2) positive?) #true)
(check-expect (myandmap (list) positive?) #true)
(check-expect (myandmap (list "6" "24" "str") string?) #true)
(check-expect (myandmap (list "false" #t) boolean?) #false)
```
