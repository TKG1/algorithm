n = gets.to_i
a = gets.split.map(&:to_i)
ta = a.tally
sum = 0

ta.each do |x, y|
  sum += y*(y-1)/2
end

n.times do |i|
  x = ta[a[i]]
  c, d = 0, 0
  c = x*(x-1)/2
  d = (x-1)*(x-2)/2
  puts sum - (c-d)
end
