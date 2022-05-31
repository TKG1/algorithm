h, w, y, x = read_line.split.map(&.to_i)
s = Array.new(h+2){Array.new(w+2, '#')}
h.times do |i|
  s[i+1][1..w] = read_line.chars
end

dx = [0, 0, 1, -1]
dy = [1, -1, 0, 0]
ans = s[y][x] == '.' ? 1 : 0
4.times do |i|
  xi = x + dx[i]
  yi = y + dy[i]
  while s[yi][xi] != '#'
    ans += 1
    xi += dx[i]
    yi += dy[i]
  end
end

puts ans
