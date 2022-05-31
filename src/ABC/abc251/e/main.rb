n = gets.to_i
a = gets.split.map(&:to_i)

inf = Float::INFINITY
dp = Array.new(n){Array.new(2, inf)}
ep = Array.new(n){Array.new(2, inf)}

dp[0][0] = 0
(n-1).times do |i|
  dp[i+1][0] = dp[i][1]
  dp[i+1][1] = [dp[i][0], dp[i][1]].min + a[i+1]
end

ep[0][1] = a[0]
(n-1).times do |i|
  ep[i+1][0] = ep[i][1]
  ep[i+1][1] = [ep[i][0], ep[i][1]].min + a[i+1]
end

ans = [ep[n-1][0], ep[n-1][1], dp[n-1][1]].min

puts ans
