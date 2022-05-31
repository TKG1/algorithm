alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n, d = read_line.split.map(&.to_i)
lr = Array.new(n){read_line.split.map(&.to_i)}.sort_by{|e| e[1]}

x = 0
ans = 0
n.times do |i|
  l, r = lr[i]
  if x < l
    x = r+d-1
    ans += 1
  end
end
pp ans
