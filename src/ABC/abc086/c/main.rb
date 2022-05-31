n = gets.to_i

t, x, y = 0, 0, 0
flag = true
n.times do
  ti, xi, yi = gets.split.map(&:to_i)
  t += (xi-x).abs + (yi-y).abs
  if ti < t || (ti-t).odd?
    flag = false
  end
  x = xi
  y = yi
  t = ti
end
puts flag ? 'Yes' : 'No'
