x, y, a, b, c = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).max(x)
b = gets.split.map(&:to_i).max(y)
c = gets.split.map(&:to_i)

abc = a.concat(b.concat(c)).sort

puts abc.max(x+y).sum
