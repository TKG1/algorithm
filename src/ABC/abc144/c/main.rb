def divsors(n)
  res = 10**12+10
  i = 1
  while i * i <= n
    if n % i == 0
      x = i+(n/i)-2
      res = x if res > x
    end
    i += 1
  end
  return res
end

n = gets.to_i
puts divsors(n)
