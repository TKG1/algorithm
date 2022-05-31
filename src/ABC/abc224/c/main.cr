alias LL = Int64

macro chmin(x, y) {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y) {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x) {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n = read_line.to_i
xy = Array.new(n) { read_line.split.map(&.to_i64) }

ans = 0i64
0.upto(n - 1) do |i|
  x1, y1 = xy[i]
  0.upto(i - 1) do |j|
    x2, y2 = xy[j]
    0.upto(j - 1) do |k|
      x3, y3 = xy[k]
      s = ((x2 - x1)*(y3 - y1) - (x3 - x1)*(y2 - y1)).abs / 2
      ans += 1 if s != 0
    end
  end
end

puts ans
