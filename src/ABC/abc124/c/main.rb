s = gets.chomp.chars

cnt1 = 0
i = 0
# 最初を１にする
s.each do |c|
  if i.even? && c == '0'
    cnt1 += 1
  elsif i.odd? && c == '1'
    cnt1 += 1
  end
  i += 1
end

cnt2 = 0
i = 0
# 最初を0にする
s.each do |c|
  if i.even? && c == '1'
    cnt2 += 1
  elsif i.odd? && c == '0'
    cnt2 += 1
  end
  i += 1
end

puts [cnt1, cnt2].min
