n = gets.to_i
s = gets.chomp.chars

ans = 0
1.upto(n-1) do |i|
  m = (s[0,i] & s[i,n]).size
  ans = m if m > ans
end
puts ans
