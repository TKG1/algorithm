s = gets.chomp
t = gets.chomp
n = s.size
m = t.size

dp = Array.new(m+1){Array.new(n+1, 0)}

i = 1
ans = 0
while i <= m
  j = i
  while j <= n - (m - i)
    if t[i-1] == s[j-1]
      dp[i][j] = dp[i-1][j-1] + 1
      ans = dp[i][j] if ans < dp[i][j]
    else
      dp[i][j] = dp[i-1][j-1]
    end
    j += 1
  end
  i += 1
end

puts m - ans
