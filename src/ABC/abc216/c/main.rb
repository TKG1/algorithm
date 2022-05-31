n = gets.to_i

ans = ''

while n >= 1
  if n.even?
    n /= 2
    ans += 'B'
  else
    n -= 1
    ans += 'A'
  end
end

puts ans.reverse
