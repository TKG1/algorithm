n, q = gets.split.map(&:to_i)
s = gets.chomp
cnt = [0]
(1..(n-1)).each do |i|
  if s[i] == 'C' && s[i-1] == 'A'
    cnt << cnt[i-1] + 1
  else
    cnt << cnt[i-1]
  end
end

q.times do |i|
  l, r = gets.split.map(&:to_i)
  l -= 1; r -= 1;
  puts cnt[r]-cnt[l]
end
