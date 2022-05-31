n = read_line.to_i
xy = Array.new(n){ read_line.split.map(&.to_i) }

ans = 0
0.upto(n-1) do |i|
  0.upto(i-1) do |j|
    x1, y1 = xy[i]
    x2, y2 = xy[j]
    x = x2-x1
    y = y2-y1
    ans += 1 if -1 <= y/x && y/x <= 1
  end
end

puts ans
