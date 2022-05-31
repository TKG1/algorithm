n = gets.to_i
a = Array.new(n){ gets.to_i }.sort
a[-1] /= 2
puts a.sum
