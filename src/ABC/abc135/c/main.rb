n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
asum = a.sum
n.times do |i|
  x = a[i] - b[i]
  if x < 0
    a[i] = 0
    b[i] = x.abs
  else
    a[i] = x
    b[i] = 0
  end
  x = a[i+1] - b[i]
  if x < 0
    a[i+1] = 0
    b[i] = x.abs
  else
    a[i+1] = x
    b[i] = 0
  end
end

puts asum - a.sum
