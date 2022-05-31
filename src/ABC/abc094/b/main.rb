n, m, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
left = a.count{|e| e < x}
right = a.count{|e| e > x}

puts [left, right].min
