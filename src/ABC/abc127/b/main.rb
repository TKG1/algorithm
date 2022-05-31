r, d, x = gets.split.map(&:to_i)

ans = [r*x-d]
2.upto(10) do
  ans << (ans[-1]*r - d)
end

puts ans
