n = gets

s = 0
n.size.times do |i|
  s += n[i].to_i
end

puts n.to_i % s == 0 ? 'Yes' : 'No'
