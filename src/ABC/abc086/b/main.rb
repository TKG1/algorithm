ab = gets.chomp.tr(' ', '').to_i
1.upto(350) do |i|
  return puts 'Yes' if i * i == ab
end
puts 'No'
