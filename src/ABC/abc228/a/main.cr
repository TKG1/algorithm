alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); puts {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

s, t, x = read_line.split.map(&.to_i)
if s < t
  yn(s <= x && x < t)
else
  yn(x < t || s <= x)
end
