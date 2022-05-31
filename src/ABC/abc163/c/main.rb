n = gets.to_i
a = gets.split.map(&:to_i)
t = a.tally
1.upto(n) do |i|
  puts t[i] || 0
end
