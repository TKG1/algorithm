n, m = read_line.split.map(&.to_i)
INF = 1e18.to_i64
dist = Array.new(n){ Array.new(n, INF)}
n.times do |i|
  dist[i][i] = 0
end

m.times do
  a, b, c = read_line.split.map(&.to_i64)
  a-=1; b-=1;
  dist[a][b] = c
end

ans = 0i64
n.times do |k|
  n.times do |i|
    n.times do |j|
      dist[i][j] = {dist[i][j], dist[i][k]+dist[k][j]}.min
      if dist[i][j] != INF
        ans += dist[i][j]
      end
    end
  end
end

puts ans
