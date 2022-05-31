# https://atcoder.jp/contests/abc243/tasks/abc243_d
N, x = gets.split.map(&:to_i)
s = gets.chomp.split('')
t = []

N.times do |i|
  if ( i > 0 && t[-1] == 'L' || t[-1] == 'R' ) && s[i] == 'U'
    t.pop
  else
    t << s[i]
  end
end

t.size.times do |i|
  if t[i] == 'L'
    x *= 2
  elsif t[i] == 'R'
    x = x * 2 + 1
  else
    x /= 2
  end
end

puts x
