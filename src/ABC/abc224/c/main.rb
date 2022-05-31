N = gets.to_i
xy = N.times.map{gets.split.map(&:to_i)}

ans = 0
(0...N).each do |i|
  x = xy[i][0]
  y = xy[i][1]
  ((i+1)...N).each do |j|
    ax = xy[j][0] - x
    ay = xy[j][1] - y
    ((j+1)...N).each do |k|
      bx = xy[k][0] - x
      by = xy[k][1] - y
      if ax*by-ay*bx != 0
        ans += 1
      end
    end
  end
end

puts ans
