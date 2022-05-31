a, b, c, x, y = gets.split.map(&:to_i)
m = 0
if (a+b) < 2*c
  m += a * x
  m += b * y
else
  if x > y
    m += 2 * c * y
    x -= y
    y = 0
  else
    m += 2 * c * x
    y -= x
    x = 0
  end

  if x > 0
    m = a < 2*c ? m+a*x : m+2*c*x
  elsif y > 0
    m = b < 2*c ? m+b*y : m+2*c*y
  end
end

puts m
