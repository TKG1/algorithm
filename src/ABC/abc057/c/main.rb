require 'set'

def divsors(n)
  res = Set.new
  i = 1
  while i * i <= n
    if n % i == 0
      res << [i, (n / i)]
    end
    i += 1
  end
  return res
end

n = gets.to_i
divs = divsors(n)
ans = 1010101010101010

divs.each do |x|
  i, j = x
  max = [i.to_s.size, j.to_s.size].max
  ans = max if ans > max
end

puts ans
