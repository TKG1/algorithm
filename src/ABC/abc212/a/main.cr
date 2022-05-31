a, b = read_line.split.map(&.to_i)
if 0 < a && b == 0
  ans = "Gold"
elsif a == 0 && 0 < b
  ans = "Silver"
else
  ans = "Alloy"
end

puts ans
