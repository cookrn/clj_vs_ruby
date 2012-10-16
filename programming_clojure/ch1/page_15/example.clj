(def visitors (ref #{}))

; transactions are used to update references
(dosync (alter visitors conj "Stu"))

; long form examination of a reference
(println
  (deref visitors))

; short form dereferencing
(println @visitors)

(defn hello
  "Writes hello message to *out*. Calls you by username.
  Knows if you have been here before."
  [username]
  ; accessing a reference -- use a transaction
  (dosync
    (let [past-visitor (@visitors username)]
      (if past-visitor
        (str "Welcome back, " username)
        (do
          (alter visitors conj username)
          (str "Hello, " username))))))

; I'm new here...
(println
  (hello "Ryan"))

; Old news!
(println
  (hello "Ryan"))
