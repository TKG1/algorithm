n = gets.to_i
i = 0
puts Array.new(n){gets.chomp.split}.map{|e| [e[0], e[1].to_i, i+=1]}.sort_by{|x| [x[0], -x[1]]}.map{|x| x[-1]}
