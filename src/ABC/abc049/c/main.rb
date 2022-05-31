s = gets.chomp.reverse
n = s.size
i = -1
while i+1 < n
  flag = false
  if s[i+1..(i+5)] == 'maerd' || s[i+1..(i+5)] == 'esare'
    flag = true
    i = i+5
  elsif s[i+1..(i+6)] == 'resare'
    flag = true
    i = i+6
  elsif s[i+1..(i+7)] == 'remaerd'
    flag = true
    i = i+7
  end
  unless flag
    puts 'NO'
    exit
  end
end

puts 'YES'
