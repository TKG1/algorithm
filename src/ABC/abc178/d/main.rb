s = gets.to_i
mod = 10**9+7

dp = Array.new(s+1, 0)
dp[0] = 1
x = 0
1.upto(s) do |i|
  if i - 3 >= 0
    x += dp[i-3]
    x %= mod
  end
  dp[i] = x
end

puts dp[s]
