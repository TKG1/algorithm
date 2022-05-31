alias I = Int32
alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n, a, b = read_line.split.map(&.to_i64)
pi, q, r, s = read_line.split.map(&.to_i64)

h = q-pi+1
w = s-r+1

g = Array.new(q-pi+1){Array.new(s-r+1, '.')}
h.times do |i|
  w.times do |j|
    x = pi+i
    y = r+j
    if x-y == a-b || x+y == a+b
      g[i][j] = '#'
    end
  end

  puts g[i].join
end
