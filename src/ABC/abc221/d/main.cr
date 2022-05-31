alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n = read_line.to_i
h = Hash(Int32, Int32).new(0)

n.times do
  a, b = read_line.split.map(&.to_i)
  h[a] += 1
  h[a+b] -= 1
end

ans = Array.new(n+1, 0)

per = 0i64
sum = 0i64
h.to_a.sort.each do |(d, i)|
  ans[sum] += d - per
  sum += i
  per = d
end

puts ans[1..].join(" ")
