n = gets.to_i
x = gets.split.map{|e| e.to_i.abs }
puts x.sum, Math.sqrt(x.sum{|e| e*e }), x.max
