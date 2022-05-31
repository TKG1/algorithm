a = gets.chomp.chars
b = gets.chomp.chars
c = gets.chomp.chars

que = [a.shift]
x = 0
while x = que.shift
  case x
  when 'a'
    que << a.shift
  when 'b'
    que << b.shift
  when 'c'
    que << c.shift
  end
  if que[0].nil?
    break
  end
end

puts x.upcase
