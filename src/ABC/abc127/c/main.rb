n, m = gets.split.map(&:to_i)
l = 1
r = n
m.times do
  li, ri = gets.split.map(&:to_i)
  l = [l, li].max
  r = [r, ri].min
end

puts [0, r-l+1].max
