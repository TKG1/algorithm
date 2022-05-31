n, k, q = gets.split.map(&:to_i)
a = Array.new(q){gets.to_i-1}
b = Array.new(n, k)

a.each do |i|
  b[i] += 1
end
n.times do |i|
  x = b[i] - q
  puts x > 0 ? 'Yes' : 'No'
end
