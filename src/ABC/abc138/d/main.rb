n, q = gets.split.map(&:to_i)
list = Array.new(n){[]}
(n-1).times do
  a, b = gets.split.map(&:to_i)
  a -= 1; b -= 1;

  list[a] << b
  list[b] << a
end

dist = Array.new(n, 0)
q.times do
  pi, x = gets.split.map(&:to_i)
  pi -= 1

  dist[pi] += x
end

vis = Array.new(n, false)
vis[0] = true
que = [0]

while v = que.shift
  list[v].each do |nex|
    next if vis[nex]

    que << nex
    vis[nex] = true
    dist[nex] += dist[v]
  end
end

puts dist.join(' ')
