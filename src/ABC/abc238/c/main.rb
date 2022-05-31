# https://atcoder.jp/contests/abc238/tasks/abc238_c
def sequences(n)
  (n*(n+1)/2)
end

MOD = 998244353
N = gets.to_i

ans = 0
i = 0

while true
  under = 10**i - 1
  top = [10**(i+1) - 1, N].min
  cnt = sequences(top) - sequences(under)
  ans += cnt - ((top - under) * under)
  i += 1
  break if top == N
end

puts ans % MOD
