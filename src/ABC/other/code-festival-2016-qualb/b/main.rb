n, a, b = gets.split.map(&:to_i)
s = gets.chomp.chars

cnt = 0
rank = 1
n.times do |i|
  if s[i] == 'a'
    if cnt < a + b
      puts 'Yes'
      cnt+=1
    else
      puts 'No'
    end
  elsif s[i] == 'b'
    if cnt < a + b && rank <= b
      puts 'Yes'
      cnt+=1
      rank+=1
    else
      puts 'No'
    end
  else
    puts 'No'
  end
end
