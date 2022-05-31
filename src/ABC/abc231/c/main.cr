alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n, q = read_line.split.map(&.to_i)
a = read_line.split.map(&.to_i).sort

at = a.tally
b = at.keys
m = at.size

asum = [0]
i = 0
asum[1..] = at.values.map{|e| i+=e}

q.times do |i|
  x = read_line.to_i
  y = b.bsearch_index{|e| e >= x } || m
  puts asum[m] - asum[y]
end
