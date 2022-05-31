w = gets.chomp
('a'..'z').each do |i|
  unless w.count(i) % 2 == 0
    puts 'No'
    exit
  end
end
puts 'Yes'
