i = 0
puts gets.chomp.chars.map{|e| i+=1; i.odd? ? e : '' }.join
