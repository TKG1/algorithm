s = gets.chomp
puts s.size == s.tr_s('0-9', '0-9').size ? 'Good' : 'Bad'
