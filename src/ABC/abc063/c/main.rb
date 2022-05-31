n = gets.to_i
a = Array.new(n){ gets.to_i }
as = a.sum

dp = Array.new(n+1){ Array.new(as+1, false)}
dp[0][0] = true

i = 1
while i <= n
  j = 0
  while j <= as
    next j+=1 unless dp[i-1][j]
    dp[i][j] = dp[i-1][j]
    dp[i][j+a[i-1]] = true
    j+=1
  end
  i+=1
end

i = as
while i >= 0
  if dp[n][i] && i % 10 != 0
    puts i
    exit
  end
  i-=1
end

puts 0
