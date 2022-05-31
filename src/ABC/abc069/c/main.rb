n = gets.to_i
a = gets.split.map(&:to_i)

two = 0
four = 0
other = 0

a.each do |i|
  if i % 4 == 0
    four += 1
  elsif i % 2 == 0
    two += 1
  else
    other += 1
  end
end

if two == 0
  puts other <= four+1 ? 'Yes' : 'No'
else
  puts other <= four ? 'Yes' : 'No'
end
