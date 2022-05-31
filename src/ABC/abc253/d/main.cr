alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)
n, a, b = read_line.split.map(&.to_i64)
c = a.lcm(b)
h = Hash(LL, LL).new(0)

x = n//a
y = n//b
z = n//c
cnt1 = (x*(x+1)*a)//2
cnt2 = (y*(y+1)*b)//2
cnt3 = (z*(z+1)*c)//2

puts (n*(n+1))//2 - cnt1 - cnt2 + cnt3
