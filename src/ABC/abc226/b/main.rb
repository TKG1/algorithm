N = gets.to_i
hash = {}
N.times do |i|
  a = gets.chomp
  hash[a] ||= 1
end
puts hash.size
