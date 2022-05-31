s = gets.split('').map(&:to_i)

(0..9).each do |i|
  if !s.include?(i)
    puts i
    exit
  end
end

puts 0
