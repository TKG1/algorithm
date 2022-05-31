N = gets.to_i
A = gets.split.map(&:to_i)
mod = 998244353
dp = Array.new(N+1){Array.new(10,0)}
dp[0][A[0]] = 1

i=0
while i < N-1
  j=0
  while j <= 9
    dp[i+1][((j+A[i+1])%10)] += dp[i][j]%mod
    dp[i+1][((j*A[i+1])%10)] += dp[i][j]%mod
    j+=1
  end
  i+=1
end

10.times do |i|
  puts dp[N-1][i] % mod
end
