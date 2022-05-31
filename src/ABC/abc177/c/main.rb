n = gets.to_i
a = gets.split.map(&:to_i)
mod = 10 ** 9 + 7
s = 0
asum = a.map{|e| s += e}

i = 0
l = n-1
ans = 0
while i < n
  ans = ans + (a[i] * (asum[l]-asum[i])) % mod
  i += 1
end

puts ans % mod
