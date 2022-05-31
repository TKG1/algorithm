s = gets.chomp
cnt = 0
ans = 0
s.each_char do |c|
  if c == 'R'
    cnt += 1
  else
    cnt = 0
  end
  ans = [cnt, ans].max
end

puts ans
