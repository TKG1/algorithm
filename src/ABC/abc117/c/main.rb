n, m = gets.split.map(&:to_i)
x = gets.split.map(&:to_i).sort
a = []
(m-1).times do |i|
  a << (x[i]-x[i+1]).abs
end
a.sort!
a.pop(n-1)

puts a.sum
