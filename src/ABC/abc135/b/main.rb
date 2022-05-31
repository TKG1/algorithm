n = gets.to_i
a = gets.split.map(&:to_i)

a_s = a.sort

i = 0
ans = a == a_s ? true : false
while i < n
  j = i+1
  while j < n
    pp = a.dup
    pp[i], pp[j] = pp[j], pp[i]
    ans = true if a_s == pp
    j+=1
  end
  i+=1
end

puts ans ? 'YES' : 'NO'
