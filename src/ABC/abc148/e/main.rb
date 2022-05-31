n = gets.to_i
if n.odd?
  puts 0
else
  ans = 0
  while n > 0
    ans += n / 5
    n /= 5
  end
  puts ans
end
