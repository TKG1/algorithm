def f(x)
  return @memo[x] if @memo[x]
  res = 1010101010

  # 1yen
  res = [res, f(x-1)+1].min

  # 6yen
  y = 6
  while y <= x
    res = [res, f(x-y)+1].min
    y *= 6
  end

  # 9yen
  y = 9
  while y <= x
    res = [res, f(x-y)+1].min
    y *= 9
  end

  return @memo[x] = res
end

n = gets.to_i
@memo = {0 => 0}

(1..n).each do |i|
  f(i)
end

puts @memo[n]
