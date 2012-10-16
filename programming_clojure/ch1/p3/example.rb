class Person < Struct.new( :first_name , :last_name )
end

# OR
class Person2
  attr_accessor \
    :first_name,
    :last_name

  def initialize( first_name , last_name )
    @first_name = first_name
    @last_name  = last_name
  end

  def to_s
    "#<Person2:#{ object_id } first_name:#{ first_name } last_name:#{ last_name }>"
  end
end

# OR
# For immutability like Clojure
# See Also: https://github.com/harukizaemon/hamster
class Person3
  attr_reader \
    :first_name,
    :last_name

  def initialize( first_name , last_name )
    @first_name = first_name
    @last_name  = last_name
  end

  # Can't do this -- ruby automatically returns argument
  # passed to methods ending with =
  # def first_name=( new_first_name )
  #   self.class.new( new_first_name , last_name )
  # end
  #
  # def last_name=( new_last_name )
  #   self.class.new( first_name , new_last_name )
  # end

  def set_first_name( new_first_name )
    self.class.new( new_first_name , last_name )
  end

  def set_last_name( new_last_name )
    self.class.new( first_name , new_last_name )
  end

  def to_s
    "#<Person3:#{ object_id } first_name:#{ first_name } last_name:#{ last_name }>"
  end
end

puts Person.new( 'Ryan' , 'Cook' )
puts Person2.new( 'Ryan' , 'Cook' )

p = Person3.new( 'Ryan' , 'Cook' )
puts p

p2 = p.set_first_name 'Jacob'
puts p2

puts "Are Ryan and Jacob the same object? #{ p.object_id == p2.object_id }"
