n = gets.to_i
xy = []
n.times do |i|
  a = gets.to_i
  xy << Array.new(a) {gets.split.map(&:to_i)}
end

ans = 0
(1<<n).times do |bit|
  a = []
  n.times do |i|
    a << i if (bit & (1<<i)) != 0
  end

  flag = true
  a.each do |i|
    xy[i].each do |x, y|
      x -= 1
      if y == 0
        break flag = false if a.include?(x)
      else
        break flag = false if !a.include?(x)
      end
    end
    break unless flag
  end

  ans = [a.size, ans].max if flag
end

puts ans
