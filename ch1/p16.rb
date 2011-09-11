## ASSUMPTIONS
#
# These functions are merely written for the sake of implying
# that ruby might provide some of the underlying sanity with
# regards to data that Clojure provides. They do nothing except
# provide some parity with the example Clojure code.

  # Change that variable
  def alter( var , &blk )
    var.instance_eval &blk
  end

  # Do fancy transactional fun things
  def transaction
    yield if block_given?
  end

## /ASSUMPTIONS

$visitors = []

alter $visitors do
  push "Stu"
end

# Writes hello message to *out*. Calls you by username.
# Knows if you have been here before.
def hello( username )
  transaction do
    past_visitor = $visitors.detect { |e| e == username }
    if past_visitor
      "Welcome back, #{ username }"
    else
      alter $visitors do
        push username
      end
      "Hello, #{ username }"
    end
  end
end

