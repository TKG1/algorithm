def score(s : String, hash : Hash(Char, Int32))
  res = 0
  ('1'..'9').each do |i|
    x = hash[i]
    x += 1 if s == i.to_s
    res += i.to_i * (10 ** x)
  end
  return res
end

k = read_line.to_i64
s = read_line
t = read_line

st = Hash(Char, Int32).new(0)
tt = Hash(Char, Int32).new(0)
cnt = Array(Int64).new(10, k)

s[..3].chars.each { |w| st[w] += 1; cnt[w.to_i64] -= 1 }
t[..3].chars.each { |w| tt[w] += 1; cnt[w.to_i64] -= 1 }

all = ((k*9) - 9) * ((k*9) - 8)
win = 0i64
(1..9).each do |i|
  next if cnt[i] == 0
  c1 = score(i.to_s, st)
  (1..9).each do |j|
    next if i == j || cnt[j] == 0
    c2 = score(j.to_s, tt)
    if c1 > c2
      win += cnt[i] * cnt[j]
    end
  end
end

(1..9).each do |i|
  next if cnt[i] < 2
  c1 = score(i.to_s, st)
  c2 = score(i.to_s, tt)
  if c1 > c2
    win += cnt[i] * (cnt[i] - 1)
  end
end

pp win/all
