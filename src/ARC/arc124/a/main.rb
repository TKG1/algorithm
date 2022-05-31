n, K = gets.split.map(&:to_i)
card = Array.new(n+1, 0)
a = Array.new(n+1, 0)
K.times do
  c, k = gets.split
  k = k.to_i
  if c == 'L'
    card[k] = k
  else
    card[-k] = k
  end
end
mod = 998244353
ans = 0
