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
  return res
end

n, m = gets.split.map(&:to_i)
divs = divsors(m)

ans = 1

divs.each do |div|
  ans = [ans, div].max if div <= m / n
end

puts ans
