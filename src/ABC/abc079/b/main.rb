def f(x)
  return @memo[x] if @memo[x]
  return @memo[x] = f(x-1) + f(x-2)
end

@memo = {0=>2,1=>1}
n = gets.to_i

puts f(n)
