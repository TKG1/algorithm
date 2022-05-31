a, b = gets.chomp.split
if a == 'H'
  puts b == 'H' ? "H" : "D"
elsif a == 'D'
  puts b == 'H' ? "D" : "H"
end
