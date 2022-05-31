n = gets.to_i
x = Array.new(5){ gets.to_i }
min = x.min

puts [(n-1)/min, 0].max + 5
