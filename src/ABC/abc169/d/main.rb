def factorization(n)
  res = []
  i = 2
  while i * i <= n
    if n % i == 0
      cnt = 0 # 素数の合計数を加えるなら
      while n % i == 0
        n /= i
        cnt += 1
      end
      res << [i, cnt] # 素数、個数
    end
    i += 1
  end
  res << [n, 1] if n != 1
  return res
end

n = gets.to_i
prime = factorization(n)
cnt = 0
i = 1
s = prime.size
while true
  ok = false
  s.times do |j|
    pr = prime[j][1]
    if pr > 0 && pr >= i
      prime[j][1] = pr - i
      cnt += 1
      ok = true
    end
  end
  break unless ok
  i += 1
end

puts cnt
