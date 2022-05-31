def sum(l, r)
  (l+r)*(r-l+1)/2
end

n, k = gets.split.map(&:to_i)
mod = 10**9+7
ans = 0
k.upto(n+1) do |i|
  ans += (sum(n-i+1,n) - sum(0,i-1) + 1)
end

puts ans % mod
