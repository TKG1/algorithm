alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n, x = read_line.split.map(&.to_i)
a = read_line.split.map(&.to_i)

h = Hash(Int32, Int32).new(0)

while h[x] == 0
  h[x] = 1
  x = a[x-1]
end

puts h.values.size
