require 'set'
n = gets.to_i
a = Set.new

cnt = 0
i = 2
while i * i <= n
  x = i * i
  while x <= n
    a << x
    x *= i
  end
  i+= 1
end

puts n - a.size
