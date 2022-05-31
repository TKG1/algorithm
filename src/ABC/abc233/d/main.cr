alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n, k = read_line.split.map(&.to_i64)
a = read_line.split.map(&.to_i64)
i = 0i64
asum = [0i64]
asum[1..] = a.map{|e| i+=e}
h = Hash(LL, LL).new(0)

ans = 0i64
(n+1).times do |i|
  l = asum[i] - k
  ans += h[l]
  h[asum[i]] += 1
end

puts ans
