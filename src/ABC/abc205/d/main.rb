n, q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
c = []
n.times do |i|
  c[i] = a[i] - i - 1
end

q.times do
  k = gets.to_i
  r = c.bsearch_index {|x| x >= k }
  if r
    puts a[r] - (c[r] - k) - 1
  else
    puts a[-1] + k - c[-1]
  end
end
