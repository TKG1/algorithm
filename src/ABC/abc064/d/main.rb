n = gets.to_i
s = gets.chomp
i = 0
a = s.chars.map{|e| i = e == '(' ? i + 1 : i - 1}
amin = a.min
s = s.prepend('(' * amin.abs) if amin < 0

i = 0
a = s.chars.map{|e| i = e == '(' ? i + 1 : i - 1}

s = s << (')' * a[-1]) if a[-1] != 0
puts s
