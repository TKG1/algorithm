require 'set'
N = gets.to_i
X, Y = [], []
N.times do |i|
  X[i], Y[i] = gets.split.map(&:to_i)
end

i = 0
ans = Set.new
while i < N
  j = i + 1
  while j < N
    x = X[i] - X[j]
    y = Y[i] - Y[j]
    if y < 0
      x *= -1
      y *= -1
    end
    g = x.gcd(y)
    x /= g
    y /= g
    if y == 0
      ans << 1
    else
      ans << Rational(x, y)
    end
    j+=1
  end
  i+=1
end

puts ans.uniq.size * 2
