n = gets.to_i
a = gets.split.map(&:to_i)
asum = a.sum

ans = 101010101010
bsum = 0
(n-1).times do |i|
  asum -= a[i]
  bsum += a[i]

  x = (asum-bsum).abs
  ans = x if x < ans
end

puts ans
