s = read_line
t = "chokudai"
mod = 10**9+7

dp = Array.new(9){Array.new(s.size+1, 0)}
dp[0].fill(1)

1.upto(8) do |i|
  1.upto(s.size) do |j|
    dp[i][j] = dp[i][j-1]

    if t[i-1] == s[j-1]
      dp[i][j] = (dp[i-1][j-1] + dp[i][j-1]) % mod
    end
  end
end

puts dp[8][s.size]
