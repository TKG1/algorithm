alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n = read_line.to_i64
to = Array.new(n){[] of LL}
tka = Array.new(n) do |i|
  t = read_line.split.map(&.to_i64)
  if t[1] > 0
    a = t[2..]
    a.each do |j|
      to[i] << j-1
    end
  end
  t
end

vis = Array.new(n, false)
vis[n-1] = true
que = Deque(LL).new(1, n-1)
ans = 0i64
until que.empty?
  v = que.shift
  ans += tka[v][0]
  to[v].each do |nex|
    next if vis[nex]
    vis[nex] = true
    que << nex
  end
end

puts ans
