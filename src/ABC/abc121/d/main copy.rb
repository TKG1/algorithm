def cal(n)
  return 0 if n <= 0
  n += 1
  res = 0

  # i桁目の1の数の偶奇を調べる
  n.to_s(2).size.times do |i|
    lp = (1 << (i+1)) # 2^i+1乗
    cnt = (n/lp) * (lp/2) # ループ回数 * 1が出てくる回数
    cnt += [0, (n%lp) - (lp/2)].max
    res += (1 << i) if (cnt % 2) == 1 # その桁の1の数が奇数なら足していく
  end
  return res
end

a, b = gets.split.map(&:to_i)
puts cal(b) ^ cal(a-1)
