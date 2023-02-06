## MyMapFoldr

Implementation of Racket's default `map` function using their `foldr` list function. 
- Takes in a function to be used
- Uses a list / cons

```racket
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
```

### Examples
```racket
(check-expect (mymapfoldr add1 '()) '())
(check-expect (mymapfoldr add1 (list 1 2 3 4)) (list 2 3 4 5))
(check-expect (mymapfoldr sub1 (list 1 2 3 4)) (list 0 1 2 3))
(check-expect (mymapfoldr string->number (list "15" "20" "25")) (list 15 20 25))
```
