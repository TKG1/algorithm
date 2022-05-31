n = gets.to_i
x = gets.split.map(&:to_i)
xs = x.sort
mid = xs[n/2]
pmid = xs[n/2-1]
n.times do |i|
  puts x[i] < mid ? mid : pmid
end
