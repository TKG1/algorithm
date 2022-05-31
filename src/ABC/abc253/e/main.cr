alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

def pow(x : Int, n : Int, mod : Int)
  ret = 1i64
  x = ret * x
  while n > 0
    ret = (ret * x) % mod if (1 & n) != 0
    x = (x * x) % mod
    n >>= 1
  end
  ret
end

# ---------------------------------------------------- :)

n, m, k = read_line.split.map(&.to_i)
mod = 998244353

if k == 0
  puts pow(m, n, mod)
  exit
end

dp = Array.new(n){Array(LL).new(m+1, 0)}
dp[0].fill(1)
dp[0][0] = 0

1.upto(n-1) do |i|
  s = 0i64
  sum = dp[i-1].map{|e| s+=e }
  1.upto(m) do |j|
    if j - k >= 0
      dp[i][j] += sum[j-k] - sum[0]
    end
    if 0 <= j+k-1 && j+k-1 <= m
      dp[i][j] += sum[m] - sum[j+k-1]
    end
    dp[i][j] %= mod
  end
end

puts dp[n-1].sum % mod
