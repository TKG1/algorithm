puts gets.chomp.chars.slice_when{|x,y| x != y}.count - 1
