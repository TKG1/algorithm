🐶 = read_line
flag = true
2.times do |i|
  if 🐶[i] != 🐶[i+1]
    flag = false
  end
end
puts flag ? "Won" : "Lost"
