alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n = read_line.to_i64
a = read_line.split.map(&.to_i64)
x = read_line.to_i64

asum = a.sum
k = x // asum
x -= k * asum
k *= n

while x >= 0
  a.each do |ai|
    x -= ai
    k += 1
    break if x < 0
  end
end

puts k
