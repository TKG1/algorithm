n = gets.to_i
k = gets.to_i

ans = 1
while n > 0
  ans = ans * 2 > ans + k ? ans+k : ans*2
  n-=1
end
puts ans
