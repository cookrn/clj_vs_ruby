( def visitors ( ref #{} ) )

( dosync ( alter visitors conj "Stu" ) )

( defn hello
  "Writes hello message to *out*. Calls you by username.
  Knows if you have been here before."
  [ username ]
  ( dosync
    ( let [ past-visitor ( @visitors username ) ]
      ( if past-visitor
        ( str "Welcome back, " username )
        ( do
          ( alter visitors conj username )
          ( str "Hello, " username ) ) ) ) ) )

