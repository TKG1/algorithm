a, b, x = gets.split.map(&:to_i)
puts b >= (x-a) && (x-a) >= 0 ? 'YES' : 'NO'
