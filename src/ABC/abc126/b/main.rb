s = gets.chomp

a = s[0..1].to_i
b = s[2..3].to_i

if 1 <= a && a <= 12 && 1 <= b && b <= 12
  puts 'AMBIGUOUS'
elsif 0 <= a && 1 <= b && b <= 12
  puts 'YYMM'
elsif 0 <= b && 1 <= a && a <= 12
  puts 'MMYY'
else
  puts 'NA'
end
