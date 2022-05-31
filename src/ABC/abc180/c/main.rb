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

n = gets.to_i
puts divsors(n).sort
