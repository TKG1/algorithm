def cal(n)
  cnt = (n+1)/2 # (n ^ n+1) = 1 となるのペアの個数(0も含む)
  ans = cnt % 2 # 偶数個なら０、奇数個なら１
  ans ^= n if (n % 2) == 0 # nが偶数なら、はみ出た分をxorする(0から始めるので)
  return ans
end
a, b = gets.split.map(&:to_i)

puts cal(b) ^ cal(a-1)
