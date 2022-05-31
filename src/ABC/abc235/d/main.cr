alias LL = Int64
macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

a, n = read_line.split.map(&.to_i64)
m = 10**6
to = Array.new(m+1){[] of LL}
1i64.upto(m) do |i|
  if a <= m/i
    to[i] << a*i
  end
  if i >= 10 && i % 10 != 0
    to[i] << ((i%10) * 10 ** (i.to_s.size-1)+(i//10))
  end
end

dist = Array.new(m+1, false)
dist[1] = true
query = Deque(Tuple(LL, LL)).new(1,{1i64, 0i64})

INF = 10101010101010
ans = INF
while !query.empty?
  v, c = query.shift
  break chmin(ans,c) if v == n

  to[v].each do |nex|
    next if nex >= m
    next if dist[nex]
    dist[nex] = true
    query << {nex, c+1}
  end
end

ans = -1 if ans == INF
puts ans
