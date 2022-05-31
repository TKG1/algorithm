l = gets.to_i

ans = 1
i = 1
while i <= 11
  ans *= l-i
  ans /= i
  i+=1
end

puts ans
