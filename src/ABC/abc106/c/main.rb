s = gets.chomp
k = gets.to_i

if s[0] == '1'
  cnt = 0
  s.chars.each do |i|
    i == '1' ? cnt += 1 : break
  end

  puts k <= cnt ? 1 : s[cnt]
else
  puts s[0]
end
