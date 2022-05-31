n = gets.to_i
t = gets.split.map(&:to_i)
a = [1<<t[0]]
(1...n).each do |i|
  x = (1<<t[i])
  if a[i-1] < x
    a << (1<<t[i])
  else
    y = x.to_s(2).size
    z = (1 << y)
    w = a[i-1] / z
    x += z * w
    while a[i-1] >= x
      x += (1 << y)
    end
    a << x
  end
end

puts a[-1]
