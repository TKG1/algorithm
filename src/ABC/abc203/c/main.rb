n, k = gets.split.map(&:to_i)
ab = n.times.map{gets.split.map(&:to_i)}
ab.sort!
n.times do |i|
  a, b = ab[i]
  if a <= k
    k += b
  end
end

puts k
