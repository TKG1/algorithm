n, q = gets.split.map(&:to_i)
hx = {} # 整数
hi = {} # インデックス
(1..n).each do |i|
  hx[i] = i
  hi[i] = i
end

q.times do
  x = gets.to_i
  # 整数の位置
  hxid = hx[x]
  # 位置から隣の整数を割り出す
  if hxid == n
    hid = hi[hxid-1]
    hi[hxid], hi[hxid-1] = hi[hxid-1], hi[hxid]
  else
    hid = hi[hxid+1]
    hi[hxid], hi[hxid+1] = hi[hxid+1], hi[hxid]
  end
  hx[x], hx[hid] = hx[hid], hx[x]
end

puts hi.values.join(' ')
