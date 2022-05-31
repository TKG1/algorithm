require 'set'

def divsors(n)
  res = Set.new
  i = 1
  while i * i <= n
    if n % i == 0
      res << i
      res << (n / i)
    end
    i += 1
  end
  return res.size
end

n = gets.to_i
i = 1
ans = 0
while i <= n
  ans += 1 if divsors(i) == 8
  i += 2
end
puts ans
