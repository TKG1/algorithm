h, w = gets.split.map(&:to_i)
c = Array.new(h+2){Array.new(w+2, '#')}
h.times do |i|
  c[i+1][1,w] = gets.chomp.split('')
end

visited = Array.new(h+2){Array.new(w+2, false)}
ans = 0
que = []
que << [1, 1, 1]
until que.empty?
  y, x, dist = que.shift
  next if visited[y][x]
  visited[y][x] = true
  ans = dist if ans < dist
  que << [y+1, x, dist+1] if c[y+1][x] == '.'
  que << [y, x+1, dist+1] if c[y][x+1] == '.'
end

puts ans
