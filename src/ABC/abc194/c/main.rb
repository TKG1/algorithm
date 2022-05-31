n = gets.to_i
a = gets.split.map(&:to_i)

cnt = []
a.each do |i|
  i += 200
  cnt[i] ||= 0
  cnt[i] += 1
end

i = 0
ans = 0
c = cnt.size

while i < c
  j = i+1
  while j < c
    if cnt[i] && cnt[j]
      ans += cnt[i] * cnt[j] * ((i-j) * (i-j))
    end
    j+=1
  end
  i+=1
end

puts ans
