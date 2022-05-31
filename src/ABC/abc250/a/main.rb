h, w = gets.split.map(&:to_i)
r, c = gets.split.map(&:to_i)

ans = 0
dx = [0, 0, 1, -1]
dy = [1, -1, 0, 0]

4.times do |i|
  x = c + dx[i] - 1
  y = r + dy[i] - 1
  if 0 <= x && x < w && 0 <= y && y < h
    ans += 1
  end
end

puts ans
