alias LL = Int64
macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n = read_line.to_i
h = read_line.split.map(&.to_i)

ans = 0
n.times do |i|
  if ans < h[i]
    ans = h[i]
  else
    break
  end
end

puts ans
