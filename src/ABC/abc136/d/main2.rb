s = gets.chomp
n = s.size

# dp(i, j) 「最初マス j に居た子供が i 回の移動の後に居るマス」
dp = Array.new(33){Array.new}
n.times do |i|
  if s[i] == 'R'
    dp[0][i] = i + 1
  else
    dp[0][i] = i - 1
  end
end

# dp(2**n+1, j) は dp(2**n, dp(2**n, j))
32.times do |pi|
  n.times do |i|
    dp[pi+1][i] = dp[pi][dp[pi][i]]
  end
end

ans = Array.new(n, 0)
n.times do |i|
  ans[dp[32][i]] += 1
end

puts ans.join(' ')
