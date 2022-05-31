o = gets.chomp
e = gets.chomp
ans = []
i = 0
o.each_char do |c|
  ans[i] = c
  i += 2
end
i = 1
e.each_char do |c|
  ans[i] = c
  i += 2
end
puts ans.join
