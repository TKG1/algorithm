def cmb(n, r, mod)
  return 0 if (r < 0) || (n < r)
  x = 1
  y = 1
  r.times do |i|
    x = (x * (n-i)) % mod
  end
  1.upto(r) do |i|
    y = (y * i) % mod
  end
  res = (x*y.pow(mod-2, mod)) % mod
  return res
end

n, a, b = gets.split.map(&:to_i)
mod = 10**9+7

ans = 2.pow(n, mod)-1
ans -= cmb(n, a, mod)
ans -= cmb(n, b, mod)
puts ans % mod
