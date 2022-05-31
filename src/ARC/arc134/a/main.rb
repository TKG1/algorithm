N, L, W = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

x = 0
ans = 0

A.each do |i|
  ans += (i - x + W - 1) / W if x < i
  x = i + W if x < i + W
end

ans += (L-x+W-1) / W if x < L

puts ans
