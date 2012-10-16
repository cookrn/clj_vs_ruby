;==============
; Forms
;==============

; See: http://clojure.org/data_structures
; an important number
42

; a vector
[1 2 3]

; function calls in clojure are lists
(+ 40 2)
(+ 1 2 3 42)
(concat [1 2] [3 42])
(+)

; Other operators
(- 10 5)
(* 2 10 10)
(> 5 2)
(>= 5 5)
(< 5 2)
(= 5 2)

; Division
; -OR- Ratio
(/ 22 7)
(class
  (/ 22 7))
(/ 22.0 7)

; quotient
(quot 22 7)

; remainder
(rem 22 7)

; BigDecimal using M
(+ 1 (/ 0.00001 1000000000000000000))
(+ 1 (/ 0.00001M 1000000000000000000))

; When to use BigInteger? Don't worry.
; An Integer:
(class
  (* 1000 1000 1000))
; A BigInteger:
; Overflow Error
; (class
;   (* 1000 1000 1000 1000 1000 1000 1000))
; Actually a java.lang.Long ??
(println
  (class
    (* 1000 1000 1000 1000 1000 1000)))

; Strings
"This is a\nmultiline string"
"This is also a
multiline String"

(.toUpperCase "hello")

; str is not toString
(str 1 2 nil 3)

; chars
(str \h \i)

; char functions
; works
(println
  (Character/toUpperCase \s))

; doesn't work
; "No matching field found: toUpperCase for class java.lang.Character"
(println
  (Character/toUpperCase \s))

; Example: interleave
(interleave "ohai" "there")
; doesn't return string
; therefore, can't use `str`
(str
  (interleave "ohai" "there"))
; instead, use `apply`
(println
  (apply str (interleave "ohai"
                         "there")))
; get message back
(println
  (apply str (take-nth 2 "othhaeir")))

true
false
nil
0

; predicates
; end in ?
(true? true)
(false? false)
(nil? nil)
(zero? 0)
