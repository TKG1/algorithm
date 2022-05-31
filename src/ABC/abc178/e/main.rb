n = gets.to_i
xy = Array.new(n){ gets.split.map(&:to_i) }

ans = 0
a, b = [], []
xy.each do |x, y|
  a << x + y
  b << x - y
end
a.sort!
b.sort!

ans = [ans, a[-1] - a[0]].max
ans = [ans, b[-1] - b[0]].max

puts ans
