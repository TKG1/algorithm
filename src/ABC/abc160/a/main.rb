s = gets.chomp
flag = true
if s[2] != s[3] || s[4] != s[5]
  flag = false
end
puts flag ? 'Yes' : 'No'
