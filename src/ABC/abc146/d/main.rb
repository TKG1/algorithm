n = gets.to_i
list = Array.new(n){[]}

(n-1).times do |i|
  a, b = gets.split.map(&:to_i)
  a-=1; b-=1;
  list[a] << [b, i]
  list[b] << [a, i]
end

vis = Array.new(n, false)
dis = Array.new(n-1, 0)

que = [[0,0]]
vis[0] = true

while (v, b = que.shift)
  cnt = 1

  list[v].each do |nex, i|
    next if vis[nex]

    vis[nex] = true
    cnt += 1 if b == cnt
    dis[i] = cnt
    cnt += 1

    que << [nex, dis[i]]
  end
end

puts dis.uniq.size
puts dis
