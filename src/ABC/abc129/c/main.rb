n, m = gets.split.map(&:to_i)
a = Array.new(m){ gets.to_i }

mod = 1000000007
dp = Array.new(n+1, -1)
dp[0] = 1
dp[1] = 1
a.each do |i|
  dp[i] = 0
end

1.upto(n-1) do |i|
  if dp[i+1] != 0
    dp[i+1] = (dp[i] + dp[i-1]) % mod
  end
end

puts dp[n]
