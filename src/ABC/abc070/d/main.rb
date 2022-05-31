n = gets.to_i

ki = Array.new(n){[]}
(n-1).times do
  a, b, c = gets.split.map(&:to_i)
  a-=1
  b-=1
  ki[a] << [b, c]
  ki[b] << [a, c]
end

q, k = gets.split.map(&:to_i)

dist = Array.new(n, -1)
dist[k-1] = 0
que = []
que << k-1

while (v = que.shift)
  ki[v].each do |nex, l|
    next if dist[nex] != -1
    dist[nex] = dist[v] + l
    que << nex
  end
end

q.times do
  x, y = gets.split.map(&:to_i)
  x-=1
  y-=1

  puts dist[x] + dist[y]
end
