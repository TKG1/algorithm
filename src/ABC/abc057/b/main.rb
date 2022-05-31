n, m = gets.split.map(&:to_i)
ab = Array.new(n){ gets.split.map(&:to_i) }
cd = Array.new(m){ gets.split.map(&:to_i) }


n.times do |i|
  x1, y1 = ab[i]
  ans = 10101010010
  num = 0
  m.times do |j|
    x2, y2 = cd[j]
    x = (x1 - x2).abs
    y = (y1 - y2).abs
    if ans > (x + y)
      ans = (x+y)
      num = j + 1
    end
  end
  puts num
end
