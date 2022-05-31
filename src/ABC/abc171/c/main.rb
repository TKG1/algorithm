n = gets.to_i
hash = {}
i = 0
('a'..'z').each do |w|
  hash[i] = w
  i += 1
end

ans = ''
while n > 0
  n -= 1
  x = n % 26
  n /= 26
  ans = hash[x] + ans
end

puts ans
