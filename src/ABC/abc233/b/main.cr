alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

l, r = read_line.split.map(&.to_i.- 1)
s = read_line.chars
s[l..r] = s[l..r].reverse
puts s.join
