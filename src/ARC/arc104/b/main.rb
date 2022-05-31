n, s = gets.chomp.split
n = n.to_i
s = s.bytes

ans = 0
0.upto(n-1) do |i|
  c1 = 0
  c2 = 0
  i.upto(n-1) do |j|
    case s[j]
    when 84
      c1+=1
    when 65
      c1-=1
    when 67
      c2+=1
    when 71
      c2-=1
    end
    ans += 1 if c1 == 0 && c2 == 0
  end
end

puts ans
