s = gets.chomp.split('').map(&:to_i).sum
puts s % 9 == 0 ? 'Yes' : 'No'
