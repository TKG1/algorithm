n = gets.to_i
a = gets.split.map(&:to_i)
bunbo = a.map{|e| Rational(1, e)}.inject(:+)
puts (1/bunbo).to_f
