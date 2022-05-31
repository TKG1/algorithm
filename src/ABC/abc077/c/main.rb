n = gets.to_i
a = gets.split.map(&:to_i).sort
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i).sort

ans = 0
n.times do |i|
  bi = b[i]

  ai = a.bsearch_index{_1>=bi}
  ci = c.bsearch_index{_1>bi}
  ai = n if ai.nil?
  ans += [ai * (n-ci), 0].max if ci
end

puts ans
