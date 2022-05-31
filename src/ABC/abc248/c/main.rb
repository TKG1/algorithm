n, m, K = gets.split.map(&:to_i)
mod =  998244353

dp = Array.new(n+1){Array.new(K+1, 0)}
dp[0][0] = 1

i = 0
while i < n
  j = 0
  while j < K
    k = 1
    while k <= m
      if j + k <= K
        dp[i+1][j+k] += dp[i][j] % mod
      end
      k+=1
    end
    j+=1
  end
  i+=1
end

puts dp[n].sum % mod
