n, k = gets.split.map(&:to_i)
a = gets.split.map{|e| (1.0+e.to_i)/2 }

sm = 0
cnt = 0
l = 0
ans = 0
n.times do |r|
  sm += a[r]
  cnt += 1
  while k < cnt
    sm -= a[l]
    cnt -= 1
    l += 1
  end
  ans = [sm, ans].max
end

puts ans
