alias LL = Int64
macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

a, b, c = read_line.split("")
ans = (a+b+c).to_i + (b+c+a).to_i + (c+a+b).to_i
puts ans
