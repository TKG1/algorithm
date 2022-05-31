n, k = gets.split.map(&:to_i)

# kの倍数の数
cnt1 = 0
(1..n).each do |i|
  cnt1 += 1 if i%k == 0
end
ans = cnt1 ** 3

# kが偶数の時
if k.even?
  cnt2 = 0
  (1..n).each do |i|
    cnt2 += 1 if i%k == k/2
  end
  ans += cnt2 ** 3
end

puts ans
