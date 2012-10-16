def blank?( string )
     string.nil? \
  or string.empty? \
  or string.chars.all? { | c | c == ' ' }
end

puts blank?( nil ).inspect
puts blank?( '' ).inspect
puts blank?( ' ' ).inspect
puts blank?( '    ' ).inspect
puts blank?( 'a' ).inspect
puts blank?( 'a ' ).inspect
