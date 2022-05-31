s = gets.chomp.chars
q = gets.to_i

flag = false # true:反転

q.times do |i|
  t, f, c = gets.chomp.split(' ')

  if t == '1'
    flag = flag ? false : true
  else
    if f == '1'
      s = flag ? s << c : s.unshift(c)
    else
      s = flag ? s.unshift(c) : s << c
    end
  end
end

puts flag ? s.reverse.join : s.join
