alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n, p1 = read_line.split.map(&.to_i)
a = read_line.split.map(&.to_i)

ans = 0
a.each do |ai|
  ans += 1 if ai < p1
end

pp ans
