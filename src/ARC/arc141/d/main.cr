alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

# n = read_line.to_i
# a = read_line.split.map(&.to_i)
# a = Array.new(n){read_line.split.map(&.to_i)}
# s = read_line
# s = Array.new(n){read_line}
