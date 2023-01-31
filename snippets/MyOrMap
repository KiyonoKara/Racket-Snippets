## MyOrMap

Manual implementation of Racket's `ormap` function.
- Use a list / cons
- Use a boolean (lambda) function or logical operator

```racket
; myormap : (X) [List-of X] [X -> Boolean] -> Boolean
; Returns whether the predicate is true for any element in the list
; Use suffix ? to explicitly return a boolean value

(define (myormap ls op?)
  (cond
    [(empty? ls) #false]
    [(cons? l)
     (or (op? (first ls))
         (myormap (rest ls) op?))]))
```

### Examples
```racket
(check-expect (myandmap (list 10 -5 -2) positive?) #true)
(check-expect (myandmap (list) positive?) #false)
(check-expect (myandmap (list "6" "24" "str") string?) #true)
(check-expect (myandmap (list "false" #t) boolean?) #true)
```
