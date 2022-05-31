n = gets.to_i
s = Array.new(n){ gets.chomp }
m = gets.to_i
t = Array.new(m){ gets.chomp }
st = s.tally
tt = t.tally

ans = 0
st.each_key do |k|
  cnt = 0
  cnt += st[k]
  cnt -= tt[k] if tt[k]
  ans = [cnt, ans, 0].max
end
puts ans
