alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n, w = read_line.split.map(&.to_i)
ab = Array.new(n){read_line.split.map(&.to_i)}
ab.sort!

ans = 0i64
i = n-1
m = w
while m > 0 && i >= 0
  m -= ab[i][1]
  if m >= 0
    ans += ab[i][0].to_i64 * ab[i][1]
  else
    ans += ab[i][0].to_i64 * ( m + ab[i][1] )
  end
  i -= 1
end

puts ans
