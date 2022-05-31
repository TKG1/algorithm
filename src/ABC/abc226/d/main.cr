alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n = read_line.to_i
xy = Array.new(n){read_line.split.map(&.to_i)}
ans = Set(Tuple(Int32, Int32)).new

n.times do |i|
  x1, y1 = xy[i]
  n.times do |j|
    next if i == j
    x2, y2 = xy[j]
    x = x1 - x2
    y = y1 - y2
    a = x.gcd(y)
    a = 1 if a == 0
    ans << {x//a, y//a}
  end
end

puts ans.size
