def f(x)
  return @memo[x] if x <= 1
  return @memo[x] if @memo[x]
  @memo[x] = f(x/2) + f(x/2) + 1
end

h = gets.to_i
@memo = {1 => 1}

puts f(h)
