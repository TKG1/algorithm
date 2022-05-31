h, n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
n.times do |i|
  h -= a[i]
end

puts h <= 0 ? 'Yes' : 'No'
