a = gets.to_i
b = gets.to_i
(1..3).each do |i|
  if a != i && b != i
    puts i
    exit
  end
end
