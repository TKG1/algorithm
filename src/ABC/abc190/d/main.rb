require 'set'

def calc_div(n)
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

# 初項a、長さn
# 等差数列の和：N = 1/2n(2a+n−1)
# 2N = n(2a+n−1)
n = gets.to_i
d = calc_div(2*n)
ans = 0
d.each do |i|
  m = (2 * n) / i
  if (i-m)%2==1
    ans += 1
  end
end
puts ans
