n = gets.to_i
a = gets.split.map(&:to_i)
a << 0
a.unshift(0)
i = 0
asum = 0

(a.size-1).times do |i|
  asum += (a[i]-a[i+1]).abs
end

(1..n).each do |i|
  m = asum + ((a[i-1]-a[i+1]).abs) - ((a[i-1]-a[i]).abs + (a[i+1]-a[i]).abs)
  puts m
end
