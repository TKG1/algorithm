n = gets.to_i
a = gets.split.map(&:to_i)

i = 0
l, r = [0], [0]
l[1..] = a.map{|e| i = i.gcd(e) }
i = 0
r[1..] = a.reverse.map{|e| i = i.gcd(e) }
r.reverse!

ans = 0
n.times do |i|
  b = l[i].gcd(r[i+1])
  ans = [b, ans].max
end

puts ans
