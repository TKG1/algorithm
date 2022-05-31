a, b = gets.split.map(&:to_i)
flag = true
flag = false unless 1 <= a && a <= 9
flag = false unless 1 <= b && b <= 9
puts flag ? a*b : -1
