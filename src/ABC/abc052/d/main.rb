n, a ,b = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)

ans = 0
(n-1).times do |i|
  ans += [(x[i+1]-x[i])*a, b].min
end

puts ans
