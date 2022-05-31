# 自然数Mの約数の個数は、素因数分解した各素数のべき乗の値に＋１して、それらの積の和になる
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
mod = 10**9+7

cnt = {}
i = 2 # 1は素数ではない
while i <= n
  f = factorization(i)
  f.each do |x|
    cnt[x[0]] ||= 0
    cnt[x[0]] += x[1]
  end
  i += 1
end

ans = 1
cnt.each_value do |v|
  ans = (ans * (v+1)) % mod
end

puts ans
