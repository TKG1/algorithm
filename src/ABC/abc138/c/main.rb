n = gets.to_i
v = gets.split.map(&:to_f).sort

ans = 0
vi = v[0]
(n-1).times do |i|
  vi = (vi + v[i+1]) / 2
end

puts vi
