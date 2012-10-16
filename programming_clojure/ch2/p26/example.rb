#==============
# Forms
#==============

# See: http://clojure.org/data_structures
# an important number
42

# an array
[1, 2, 3]

# function calls in clojure are lists
40 + 2
1 + 2 + 3 + 42
[1, 2].concat [3, 42]

# uh oh!
# +
# ruby doesn't know what to do with a no argument Fixnum op

# Other operators
10 - 5
2 * 10 * 10
5 > 2
5 >= 5
5 < 2
5 == 2

# Division
# Ruby has Rational like clojure's Ratio
# the quotient is returned though
22 / 7
(22 / 7).class
22.0 / 7

# Quotient
# Rational
22.quo 7
22.quo(7).class
22.quo(7).numerator
22.quo(7).denominator

# remainder
22.remainder 7

# Bignum class is used automatically
(1000 ** 1000).class

# Strings
"This is a\nmultiline string"
"This is also a
multiline String"

"hello".upcase
