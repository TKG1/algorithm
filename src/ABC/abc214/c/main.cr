n = read_line.to_i
s = read_line.split.map(&.to_i64)
t = read_line.split.map(&.to_i64)

dp = Array.new(n, 0i64)
dp[0] = t[0]
(2*n).times do |i|
  i %= n
  dp[(i+1) % n] = { dp[i] + s[i], t[(i+1) % n] }.min
end

puts dp.join(" ")
