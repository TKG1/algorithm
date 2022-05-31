n, m = gets.split.map(&:to_i)
list = Array.new(n){[]}
m.times do
  a, b = gets.split.map(&:to_i)
  a-=1
  b-=1
  list[a] << b
  list[b] << a
end
n.times do |i|
  puts list[i].size
end
