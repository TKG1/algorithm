x, y = gets.to_s.split.map(&.to_i)
min = x > y ? y : x
max = x > y ? x : y
puts min+3 > max ? "Yes" : "No"
