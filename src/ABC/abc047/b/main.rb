w, h, n = gets.split.map(&:to_i)
a, b = 0, 0
n.times do |i|
  x, y, c = gets.split.map(&:to_i)
  case c
  when 1
    a = x if a < x
  when 2
    w = x if w > x
  when 3
    b = y if b < y
  when 4
    h = y if h > y
  end
end

w = [w-a, 0].max
h = [h-b, 0].max
puts w * h
