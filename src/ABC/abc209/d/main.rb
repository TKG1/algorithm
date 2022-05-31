n, q = gets.split.map(&:to_i)
list = Array.new(n){Array.new}
(n-1).times do
  a, b = gets.split.map(&:to_i)
  a-=1
  b-=1
  list[a] << b
  list[b] << a
end

visited = Array.new(n, -1) # 0, 1
visited[0] = 1
que = []
que << 0
until que.empty?
  now = que.shift
  unless list[now].nil?
    list[now].each do |nex|
      next if visited[nex] != -1
      que << nex
      visited[nex] = visited[now] == 0 ? 1 : 0
    end
  end
end

q.times do |i|
  c, d = gets.split.map(&:to_i)
  c-=1
  d-=1
  if visited[c] == visited[d]
    puts 'Town'
  else
    puts 'Road'
  end
end
