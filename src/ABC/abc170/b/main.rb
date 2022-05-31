x, y = gets.split.map(&:to_i)
0.upto(x) do |i|
  z = y - (i*2)
  if z % 4 == 0 && (i+(z/4)) == x
    puts 'Yes'
    exit
  end
end
puts 'No'
