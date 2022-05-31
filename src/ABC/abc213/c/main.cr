h, w, n = read_line.split.map &.to_i
xy = [] of Tuple(Int32, Int32)
x = Set(Int32).new
y = Set(Int32).new
n.times do |i|
  a, b = read_line.split.map &.to_i
  xy << {a, b}
  x << b
  y << a
end
x = x.to_a.sort
y = y.to_a.sort

hx = Hash(Int32, Int32).new
hy = Hash(Int32, Int32).new

x.each_with_index(1) do |xi, i|
  hx[xi] = i
end

y.each_with_index(1) do |yi, i|
  hy[yi] = i
end

xy.each do |(y, x)|
  puts "#{hy[y]} #{hx[x]}"
end
