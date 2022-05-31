a, b = gets.chomp.split
ab = a * b.to_i
ba = b * a.to_i
puts ab > ba ? ba : ab
