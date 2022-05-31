s = gets.chomp
t = gets.chomp
n = s.size

ok = false
n.times do
  if s == t
    ok = true
  end
  s.prepend(s[-1])
  s.chop!
end

puts ok ? "Yes" : "No"
