k, n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

asum = a
n.times do |i|
  asum << a[i] + k
end

ans = 10**6+1010
(2*n).times do |i|
  next if asum[n-1+i].nil?
  x = asum[n-1+i] - asum[i]
  ans = x if ans > x
end

puts ans
