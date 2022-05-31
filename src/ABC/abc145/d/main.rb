def cmb(n, r, mod)
  return 0 if (r < 0) || (n < r)
  r = [r, n - r].min
  return (@fact[n] * @factinv[r] * @factinv[n-r]) % mod
end

x, y = gets.split.map(&:to_i)
return puts 0 if (x + y) % 3 != 0

mod = 10**9+7
n = 10**6+5

@fact = [1, 1]  # fact[n] = (n! mod p)
@factinv = [1, 1]  # factinv[n] = ((n!)^(-1) mod p)
@inv = [0, 1]  # factinv 計算用

i = 2
while i <= n
  @fact << ((@fact[-1] * i) % mod)
  @inv << ((-@inv[mod % i] * (mod / i)) % mod)
  @factinv << ((@factinv[-1] * @inv[-1]) % mod)
  i += 1
end


i = (x+y)/3
puts cmb(x+y-2*i, x-i, mod)
