n = gets.to_i
pp = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)

s = (1..n).to_a.permutation(n).to_a
a = s.find_index(pp)
b = s.find_index(q)
puts (b-a).abs
