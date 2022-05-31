a, b, c, k = gets.split.map(&:to_i)
ans = 0
ans += [a, k].min
k -= ans
k -= [b, k].min
ans += ([c, k].min * -1) if k > 0
puts ans
