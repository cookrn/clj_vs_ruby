# Change that variable
def alter( var , &blk )
  var.instance_eval &blk
end

# Do fancy transactional fun things
def transaction
  yield if block_given?
end

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

# I'm new here...
puts hello( 'Ryan' )

# Old news!
puts hello( 'Ryan' )
