n = gets.to_i
(1..9).each do |i|
  (1..9).each do |j|
    if n == i*j
      puts 'Yes'
      exit
    end
  end
end
puts 'No'
