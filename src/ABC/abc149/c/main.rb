def prime_num(x)
  prime = Array.new(x, true)
  prime[0] = prime[1] = false
  i = 2
  while i <= x
    if prime[i]
      n = i * 2
        while n <= x
          prime[n] = false
          n += i
        end
      end
    i += 1
  end
  return prime
end

v = gets.to_i
n = 10**6
isprime = prime_num(n)
i = 1
while i <= n
  if i >= v
    if isprime[i]
      puts i
      exit
    end
  end
  i += 1
end
