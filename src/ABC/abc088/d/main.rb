h, w = gets.split.map(&:to_i)
s = Array.new(h+2){Array.new(w+2, '#')}

cnt = 0
h.times do |i|
  si = gets.chomp.chars
  cnt += si.count('#')
  s[i+1][1..w] = si
end

dist = Array.new(h+2){Array.new(w+2, -1)}
dist[1][1] = 1
que = [[1, 1]]

while (y, x = que.shift)

  if s[y][x+1] != '#' && dist[y][x+1] == -1
    dist[y][x+1] = dist[y][x] + 1
    que << [y, x+1]
  end

  if s[y][x-1] != '#' && dist[y][x-1] == -1
    dist[y][x-1] = dist[y][x] + 1
    que << [y, x-1]
  end

  if s[y+1][x] != '#' && dist[y+1][x] == -1
    dist[y+1][x] = dist[y][x] + 1
    que << [y+1, x]
  end

  if s[y-1][x] != '#' && dist[y-1][x] == -1
    dist[y-1][x] = dist[y][x] + 1
    que << [y-1, x]
  end
end

puts dist[h][w] != -1 ? (h*w) - dist[h][w] - cnt : -1
