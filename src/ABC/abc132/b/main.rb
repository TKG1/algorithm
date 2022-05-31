n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
(n-2).times do |i|
  m = [a[i], a[i+1], a[i+2]].min(2)[1]

  ans += 1 if m == a[i+1]
end

puts ans
