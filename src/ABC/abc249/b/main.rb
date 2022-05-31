s = gets.chomp.chars
ans = true
ans = false if s.uniq.size != s.size
('A'..'Z').each do |i|
  if s.include?(i)
    break
  end
  if i == 'Z'
    ans = false
  end
end
('a'..'z').each do |i|
  if s.include?(i)
    break
  end
  if i == 'z'
    ans = false
  end
end

puts ans ? 'Yes' : 'No'
