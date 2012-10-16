(defn blank? [s]
  (every? #(Character/isWhitespace %) s))

(println
  (blank? nil))

(println
  (blank? ""))

(println
  (blank? " "))

(println
  (blank? "     "))

(println
  (blank? "a"))

(println
  (blank? "a "))
