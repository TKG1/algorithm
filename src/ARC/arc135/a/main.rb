X = gets.to_i
MOD = 998244353
@memo = { 1 => 1, 2 => 2, 3 => 3, 4 => 4 }

def f(x)
  return @memo[x] if @memo[x]
  x1 = x / 2
  x2 = (x+1)/2
  @memo[x] = f(x1) * f(x2) % MOD
end

puts f(X)
