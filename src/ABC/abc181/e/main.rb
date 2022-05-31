n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i).sort
w = gets.split.map(&:to_i)

hs = [0]
he = [0]
(n-1).times do |i|
  next if i.odd?
  hs << hs[-1] + (h[i]-h[i+1]).abs
  he << he[-1] + (h[-i-1]-h[-i-2]).abs
end

he.reverse!
ans = 101010101010101010
m.times do |i|
  x = h.bsearch_index{ _1 >= w[i] } || n-1
  x -= 1 if x.odd?
  cnt = (w[i]-h[x]).abs
  cnt += hs[x/2]
  cnt += he[x/2]
  ans = [ans ,cnt].min
end

puts ans
