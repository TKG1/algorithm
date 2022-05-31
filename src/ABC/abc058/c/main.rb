n = gets.to_i
s = Array.new(n){ gets.chomp }
ans = ''
('a'..'z').each do |j|
  cnt = s[0].count(j)
  unless cnt.nil?
    cnt1 = 0

    n.times do |k|
      next if k == 0
      cnt1 = s[k].count(j)
      break if cnt1.nil?

      cnt = cnt1 if cnt > cnt1
    end

    ans << (j * cnt) if cnt1
  end
end
puts ans
