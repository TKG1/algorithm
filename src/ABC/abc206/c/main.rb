def nc2(n)
  return n*(n-1)/2
end

n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0

tot = a.tally
total = nc2(n)

tot.each_value do |i|
  total -= nc2(i)
end

puts total
