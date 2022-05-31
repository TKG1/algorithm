a, b, c = gets.split.map(&:to_i)
k = gets.to_i

max = [a, b, c].max
ans = (a + b + c - max) + (max * (1 << k))
puts ans
