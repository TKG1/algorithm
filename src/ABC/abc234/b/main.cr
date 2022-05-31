require "big"
alias LL = Int64
macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n = read_line.to_i
xy = Array.new(n){ read_line.split.map(&.to_i) }

ans = 0
n.times do |i|
  x1, y1 = xy[i]
  n.times do |j|
    next if i == j
    x2, y2 = xy[j]
    chmax(ans, Math.sqrt((x1-x2)**2+(y1-y2)**2))
  end
end

puts ans
