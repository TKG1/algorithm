alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

mod = 998244353
n = read_line.to_i
a = read_line.split.map(&.to_i)
b = read_line.split.map(&.to_i)
m = 3000
dp = [1] * (m+1)

n.times do |i|
  nx = [0] * (m+1)
  (a[i]..b[i]).each do |j|
    nx[j] = dp[j]
  end
  dp = nx
  m.times do |k|
    dp[k+1] += dp[k]
    dp[k+1] %= mod
  end
end

puts dp[m]
