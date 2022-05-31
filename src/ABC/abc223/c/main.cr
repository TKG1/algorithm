alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n = read_line.to_i
ab = Array.new(n){read_line.split.map(&.to_i)}

l = 0
r = n-1
cl, cr = 0, 0
while l < r
  al, bl = ab[l]
  ar, br = ab[r]

  xl = al/bl - cl
  xr = ar/br - cr

  if xl < xr
    l += 1
    cr += xl
    cl = 0
  else
    r -= 1
    cl += xr
    cr = 0
  end
end

ll = 0
rr = 0
ab[0...l].each do |abi|
  ll += abi[0]
end
rr += ll + ab[l][0]

b = ab[l][1]
l = (ll+cl*b)
r = (rr-cr*b)
puts (r-l)/2 + l
