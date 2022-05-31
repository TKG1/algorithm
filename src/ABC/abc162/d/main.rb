n = gets.to_i
s = gets.chomp.chars
t = s.tally

r = t['R'] || 0
g = t['G'] || 0
b = t['B'] || 0

ans = r*g*b
i = 0
while i < n
  j = i+1
  while j < n
    k = j + j - i
    if k < n
      if s[i] != s[j] && s[i] != s[k] && s[k] != s[j]
        ans -= 1
      end
    end
    j += 1
  end
  i += 1
end

puts ans
