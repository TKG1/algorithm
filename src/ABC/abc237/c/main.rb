s = gets.chomp.split('')

if s.uniq.size == 1
  puts 'Yes'
  exit
end

if s[-1] == 'a'
  cnt = 0
  s.reverse.each{|i| i == 'a' ? cnt +=1 : break}
  if s[0] == 'a'
    s.each{|i| i == 'a' ? cnt -=1 : break}
  end
  s = ['a'] * cnt + s if cnt > 0
end

puts s.join == s.reverse.join ? 'Yes' : 'No'
