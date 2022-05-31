N = gets.to_i
A = gets.split.map(&:to_i)

pizza = [0, 360]
cnt = 0

A.each do |d|
  cnt += d
  pizza << (cnt % 360)
end

ans = 0
pizza.sort!
(N+1).times do |i|
  ans = [ans, (pizza[i+1]-pizza[i])].max
end

p ans
