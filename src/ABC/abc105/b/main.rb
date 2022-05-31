n = gets.to_i

(0..101).each do |i|
  (0..101).each do |j|
    return puts 'Yes' if i*4+j*7==n
  end
end
puts 'No'
