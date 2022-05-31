n = gets.to_i
50001.times do |i|
  if (i * 1.08).to_i == n
    puts i
    exit
  end
end

puts ':('
