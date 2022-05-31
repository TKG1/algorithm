s = gets.chomp
ok = true
s.size.times do |i|
  if i.even?
    unless s[i] == 'R' || s[i] == 'U' || s[i] == 'D'
      ok = false
    end
  else
    unless s[i] == 'L' || s[i] == 'U' || s[i] == 'D'
      ok = false
    end
  end
end

puts ok ? 'Yes' : 'No'
