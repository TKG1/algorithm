x = gets.to_i

if x < 11
  ans = x <= 6 ? 1 : 2
else
  ans = (x / 11) * 2
  a = x % 11
  if a != 0
    ans += a <= 6 ? 1 : 2
  end
end

puts ans
