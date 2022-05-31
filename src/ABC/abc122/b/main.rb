s = gets.chomp

l = 0
n = s.size
ans = 0
while l < n
  r = l
  while r < n
    flag = true

    s[l..r].each_char do |w|
      if !['A', 'C', 'G', 'T'].include?(w)
        flag = false
      end
    end

    if flag && ans < s[l..r].size
      ans = s[l..r].size
    end

    r += 1
  end

  l += 1
end

puts ans
