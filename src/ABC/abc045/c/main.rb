s = gets.chomp
n = s.size
ans = 0
(1<<(n-1)).times do |bit|
  ss = s
  i = 0
  (n-1).times do |j|
    if bit & (1 << j) != 0
      ans += ss[i..j].to_i
      i = j+1
    end
  end
  ans += ss[i,n].to_i
end

puts ans
