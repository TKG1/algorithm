def f(n)
  if n.even?
    x = n/2
  else
    x = 3*n+1
  end
  i = @memo.size
  if @memo[x]
    puts i + 1
    exit
  else
    @memo[x] = i
  end

  f(x)
end

s = gets.to_i
@memo = {s => 0}

puts f(s)
