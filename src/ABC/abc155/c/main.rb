n = gets.to_i
s = Array.new(n){ gets.chomp } # n行1列の改行区切りの整数を配列として受け取る
ts = {}
cnt = 0
n.times do |i|
  ts[s[i]] ||= 0
  ts[s[i]] += 1
  cnt = ts[s[i]] if ts[s[i]] > cnt
end
ans = []
ts.each_key do |k|
  if ts[k] == cnt
    ans << k
  end
end

puts ans.sort
