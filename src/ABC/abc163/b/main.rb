n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
x = n-a.sum
puts x < 0 ? -1 : x
