alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n = read_line.to_i64
ans = 0i64
i = 1i64
while i <= n
  x = n//i
  nex = n//x+1
  ans += x*(nex-i)
  i = nex
end

puts ans
