n = gets.to_i
k = gets.to_i
x = gets.split.map(&:to_i)

ans = 0
n.times do |i|
  ans += [(0-x[i]).abs, (k-x[i]).abs].min * 2
end

puts ans
