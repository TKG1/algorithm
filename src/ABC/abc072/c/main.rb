n = gets.to_i
a = gets.split.map(&:to_i)
at = a.tally

ans = 0
a.each do |i|
  x = at[i]
  x += at[i-1] if at[i-1]
  x += at[i+1] if at[i+1]
  ans = x if ans < x
end

puts ans
