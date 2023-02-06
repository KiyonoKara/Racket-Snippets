## MyMap

Manual recursive implementation of the `map` function.
- Takes a function as a parameter
- Uses a list / cons

```racket 
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
```

### Examples
```racket
(check-expect (mymap add1 '()) '())
(check-expect (mymap add1 (list 1 2 3)) (list 2 3 4))
(check-expect (mymap number->string (list 1 2 3)) (list "1" "2" "3"))
(check-expect (mymap  string->number (list "1" "2" "3")) (list 1 2 3))
```

