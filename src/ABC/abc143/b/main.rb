n = gets.to_i
d = gets.split.map(&:to_i)
ans = 0
(0..n-1).to_a.combination(2) do |per|
  i, j = per
  ans += d[i] * d[j]
end

puts ans
