s = read_line
t1 = ('a'..'z').to_a
t2 = ('A'..'Z').to_a
flag = true
s.size.times do |i|
  if i.even?
    flag = false unless t1.includes?(s[i])
  else
    flag = false unless t2.includes?(s[i])
  end
end

puts flag ? "Yes" : "No"
