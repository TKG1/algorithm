# https://atcoder.jp/contests/abc242/tasks/abc242_c

N = gets.to_i
mod = 998244353

dp = Array.new(N){Array.new(10, 0)}
dp[0][0] = 0
(1..9).each do |i|
  dp[0][i] = 1
end

i = 1
while N > i
  (1..9).each do |j|
    if j == 1
      dp[i][j] = ( dp[i-1][j] + dp[i-1][j+1] ) % mod
    elsif j == 9
      dp[i][j] = ( dp[i-1][j] + dp[i-1][j-1] ) % mod
    else
      dp[i][j] = ( dp[i-1][j-1] + dp[i-1][j] + dp[i-1][j+1] ) % mod
    end
  end
  i += 1
end

puts dp[N-1].sum % mod
