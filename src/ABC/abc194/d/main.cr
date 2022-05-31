n = read_line.to_i
ans = 0
1.upto(n - 1) do |i|
  ans += (n/i)
end

puts ans
