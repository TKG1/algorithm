n, T = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)
ans = T
(n-1).times do |i|
  a = t[i+1]-t[i]
  ans += a < T ? a : T
end
puts ans
