s = gets.chomp
('a'..'z').each do |w|
  return puts w unless s.include?(w)
end
puts 'None'
