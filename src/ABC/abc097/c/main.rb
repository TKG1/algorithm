require 'set'
s = gets.chomp
sa = s.chars
k = gets.to_i
n = s.size
ans = Set.new(sa)

i = 0
while i < n
  j = i
  while j < n
    break if (j - i) > k
    ans << s[i..j]
    j += 1
  end
  i += 1
end

puts ans.sort[k-1]
