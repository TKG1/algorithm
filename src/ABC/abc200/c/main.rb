n = gets.to_i
a = gets.split.map(&:to_i)

cnt = Array.new(202, 0) # a[i]を200で割ったあまりの個数
ans = 0
n.times do |i|
  mo = a[i] % 200
  ans += cnt[mo]
  cnt[mo] += 1
end

puts ans
