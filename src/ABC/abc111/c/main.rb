n = gets.to_i
a = gets.split.map(&:to_i)

b, c = [], []
n.times do |i|
  i.even? ? b << a[i] : c << a[i]
end

bs = b.tally.sort_by{|x| x[1]}
cs = c.tally.sort_by{|x| x[1]}

if bs[-1][0] != cs[-1][0]
  return puts n - bs[-1][1] - cs[-1][1]
end

if bs[-1][0] == cs[-1][0]
  bm = bs[-1][1]
  cm = cs[-2] ? cs[-2][1] : 0
  ans = n - bm - cm

  cm = cs[-1][1]
  bm = bs[-2] ? bs[-2][1] : 0
  ans = [ans ,n - bm - cm].min
  puts ans
end
