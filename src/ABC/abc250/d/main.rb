require 'prime'

n = gets.to_i

prime = []
primes = []
s = 0
Prime.each(n) do |pr|
  break if 2 * (pr * pr * pr) > n
  prime << pr
  primes << (pr * pr * pr)
  s += 1
end

ans = 0
j = 0
prime.each do |i|
  j += 1
  a = n / i
  e = primes.bsearch_index{ _1 > a } || s-1
  if (i * primes[e]) > n
    if (i * primes[e-1]) <= n && j < e+1
      e -= 1
    else
      next
    end
  end

  ans += e+1-j
end

puts ans
