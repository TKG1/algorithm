s = gets.chomp
ans = ''
s.chars do |item|
  if item == '0'
    ans << '0'
  elsif item == '1'
    ans << '1'
  else
    ans.chop!
  end
end

puts ans
