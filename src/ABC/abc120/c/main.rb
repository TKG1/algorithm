s = gets.chomp
z = s.count('0')
o = s.size - z
puts [z, o].min * 2
