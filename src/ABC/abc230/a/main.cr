alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n = read_line.to_i
if n >= 42
  n += 1
  s = ("0" * (3-n.to_s.size)) + n.to_s
  puts "AGC" + s
else
  s = ("0" * (3-n.to_s.size)) + n.to_s
  puts "AGC" + s
end
