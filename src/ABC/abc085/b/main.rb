n = gets.to_i
a = Array.new(n){ gets.to_i }.sort.uniq
puts a.size
