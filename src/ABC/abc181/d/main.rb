s = gets.chomp
cnt = s.split('').tally
ok = false
n = s.size

ok = true if n == 1 && s == '8'
if n == 2
  ok = true if s.to_i % 8 == 0
  s[0], s[1] = s[1], s[0]
  ok = true if s.to_i % 8 == 0
end

if n >= 3
  num = 112
  while num <= 1000
    flag = true
    num_cnt = num.to_s.split('').tally
    num_cnt.each do |k, v|
      if cnt[k].nil? || cnt[k] < v
        flag = false
      end
    end
    ok = true if flag
    num += 8
  end
end

puts ok ? 'Yes' : 'No'
