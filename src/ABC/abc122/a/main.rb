b = gets.chomp
case b
when 'A'
  a = 'T'
when 'T'
  a = 'A'
when 'C'
  a = 'G'
when 'G'
  a = 'C'
end
puts a
