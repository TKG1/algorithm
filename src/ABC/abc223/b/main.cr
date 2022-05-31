alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

s = read_line
t = Set(String).new

s.size.times do |i|
  t << s
  s = s.lchop + s[0]
end

min, max = t.to_a.sort.minmax
puts min, max
