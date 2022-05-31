alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n = read_line.to_i
a = read_line.split.map(&.to_i)
mod = 998244353

dp = Array.new(n){Array.new(10, 0)}
dp[0][a[0]] = 1

1.upto(n-1) do |i|
  0.upto(9) do |j|
    next if dp[i-1][j] == 0
    f = (j+a[i]) % 10
    g = (j*a[i]) % 10
    dp[i][f] = (dp[i][f] + dp[i-1][j]) % mod
    dp[i][g] = (dp[i][g] + dp[i-1][j]) % mod
  end
end

puts dp[n-1].join("\n")
