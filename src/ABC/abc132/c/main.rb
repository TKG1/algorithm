n = gets.to_i
a = gets.split.map(&:to_i).sort
at = a.tally

ans = 0
abc = 0
a[-1].times do |i|
  abc += (at[i] || 0)
  arc = n - abc
  ans += 1 if abc == arc
end

puts ans
