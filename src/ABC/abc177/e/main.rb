n = gets.to_i
a = gets.split.map(&:to_i)
am = 1000005

c = Array.new(am+1, 0)
a.each do |ai|
  c[ai] += 1
end

f1 = true
2.upto(am) do |i|
  cnt = 0
  j = i
  while j < am
    cnt += c[j]
    j += i
  end
  break f1 = false if cnt > 1
end

if f1
  puts 'pairwise coprime'
  exit
end

i = a[0]
1.upto(n-1) do |j|
  i = i.gcd(a[j])
end

if i == 1
  puts 'setwise coprime'
else
  puts 'not coprime'
end
