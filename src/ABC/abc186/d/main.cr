n = gets.to_s.to_i
a = gets.to_s.split.map(&.to_i64).sort

ans = 0_i64
cnt = 0_i64
1.upto(n-1) do |i|
  cnt += a[i-1]

  x = (a[i]*i - cnt).abs
  ans += x
end

puts ans
