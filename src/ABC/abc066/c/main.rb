n = gets.to_i
a = gets.split.map(&:to_i)
b = []
n.times do |i|
  if i.even?
    b << a[i]
  else
    b.unshift(a[i])
  end
end
puts n.odd? ? b.reverse.join(' ') : b.join(' ')
