N = gets.to_i

@memo = {1 => [1], 2 => [1, 2, 1]}

def f(x)
  return @memo[x] if @memo[x]
  x1 = x-1
  @memo[x] = [f(x1) , x , f(x1)]
end

puts f(N).join(' ')
