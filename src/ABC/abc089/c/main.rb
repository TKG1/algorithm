n = gets.to_i
cnt = {}
a = ['M','A','R','C','H']
n.times do
  s = gets.chomp
  if a.include?s[0]
    cnt[s[0]] ||= 0
    cnt[s[0]] += 1
  end
end

ans = 0
a.each do |i|
  a.each do |j|
    a.each do |k|
      next if i == j || j == k || k == i
      if cnt[i] && cnt[j] && cnt[k]
        ans += cnt[i] * cnt[j] * cnt[k]
      end
    end
  end
end

puts ans / 6
