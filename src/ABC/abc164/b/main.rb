a, b, c, d = gets.split.map(&:to_i)
while true
  c -= b
  if c <= 0
    puts 'Yes'
    exit
  end
  a -= d
  if a <= 0
    puts 'No'
    exit
  end
end
