x1, y1, x2, y2 = gets.split.map(&:to_i)
dx = x2-x1
dy = y2-y1

ans = []
2.times do
  dx, dy = -dy, dx

  x2 += dx
  y2 += dy

  ans << x2 << y2
end

puts ans.join(" ")
