n = gets.to_i
v = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

ans = 0
(1<<n).times do |bit|
  x = 0
  y = 0
  n.times do |j|
    if (bit & (1 << j)) != 0
      x += v[j]
      y += c[j]
    end
  end

  ans = [x-y, ans].max
end

puts ans
