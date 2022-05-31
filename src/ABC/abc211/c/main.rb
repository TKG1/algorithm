s = gets.chomp.split('')
n = s.size
t = ['c', 'h', 'o', 'k', 'u', 'd', 'a', 'i']
mod = 10 ** 9 + 7
dp = Array.new(9){Array.new(n+1, 0)}
(n+1).times{dp[0][_1] = 1}

8.times do |i|
  n.times do |j|
    if s[j] == t[i]
      dp[i+1][j+1] = (dp[i][j] + dp[i+1][j]) % mod
    else
      dp[i+1][j+1] = (dp[i+1][j]) % mod
    end
  end
end

p dp[-1][-1]
