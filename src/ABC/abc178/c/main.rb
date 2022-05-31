n = gets.to_i
mod = 10 ** 9 + 7

a = 10.pow(n, mod)
b = 9.pow(n, mod)
c = 8.pow(n, mod)

puts (a - b - b + c) % mod
