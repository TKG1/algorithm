s = gets.chomp
ok = true
ok = false if s[0] != 'A'
ok = false if s[2..-2].count('C') != 1
('A'..'Z').each do |w|
  next if w == 'A' || w == 'C'
  ok = false if s.include?(w)
end
puts ok ? 'AC' : 'WA'
