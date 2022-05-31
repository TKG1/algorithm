n = gets.to_i
a = gets.split.map(&:to_i)

cnt = 0
n.times do |i|
  ai = a[i]
  while ai % 2 == 0
    cnt += 1
    ai /= 2
  end
end
puts cnt
