s = gets.chomp
t = gets.chomp
sl = s.size
tl = t.size

i = 0
list = []
while i + tl <= sl
  j = 0

  if s[i] == t[j] || s[i] == '?'
    flag = true

    t.each_char do |c|
      unless s[i+j] == c || s[i+j] == '?'
        flag = false
      end

      j += 1
    end
  else
    flag = false
  end

  if flag
    sc = s.dup
    sc[i...i+tl] = t
    sc.tr!('?', 'a')
    list << sc
  end

  i += 1
end

puts list.empty? ? 'UNRESTORABLE' : list.min
