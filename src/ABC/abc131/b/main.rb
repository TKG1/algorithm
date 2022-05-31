n, l = gets.split.map(&:to_i)
a = (1..n).map{|e| l + e - 1 }
asum = a.sum
cnt = 10**7
ans = 0
n.times do |i|
  if cnt > a[i].abs
    cnt = a[i].abs
    ans = asum - a[i]
  end
end

puts ans
