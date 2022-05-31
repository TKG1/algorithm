def pfact(x) # 素因数分解
  res = []
  i = 2
  while i*i<=x
    while x%i==0
      x/=i
      res << i
    end
    i+=1
  end
  res << x if x!=1
  return res
end

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

prime = Array.new(m+1, true)

n.times do |i|
  pr = pfact(a[i]).uniq
  pr.each do |j| # エラトステネスの篩
    if prime[j]
      x = j
      while x <= m
        prime[x] = false
        x += j
      end
    end
  end
end

puts prime.count(true) - 1

i = 1
while i <= m
  if prime[i]
    puts i
  end
  i+=1
end
