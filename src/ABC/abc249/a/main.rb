a, b, c, d, e, f, x = gets.split.map(&:to_i)

aoki = 0
takahasi = 0

i = x
while i > 0
  takahasi += a
  i -= a
  if i < 0
    takahasi += i
  end
  i -= c
end

i = x
while i > 0
  aoki += d
  i -= d
  if i < 0
    aoki +=  i
  end
  i -= f
end

t = takahasi * b
a = aoki * e

if t == a
  puts 'Draw'
elsif t > a
  puts 'Takahashi'
else
  puts 'Aoki'
end
