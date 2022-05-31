n, m = gets.split.map(&:to_i)
x = [n, (m/2)].min
n -= x
m -= 2*x
if m > 0
  x += m/4
end
puts x
