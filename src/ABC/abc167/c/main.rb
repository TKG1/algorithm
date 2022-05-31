n, m, x = gets.split.map(&:to_i)
ca = Array.new(n){ gets.split.map(&:to_i) } # n行m列の整数を2次元配列で受け取る

ans = 10101010
(1<<n).times do |bit|
  under = Array.new(m, 0)
  cnt = 0
  n.times do |i|
    if (bit & (1<<i)) != 0
      money, *s = ca[i]
      cnt += money
      m.times do |j|
        under[j] += s[j]
      end
    end
  end

  flag = true
  under.each do |k|
    flag = false if k < x
  end

  if flag
    ans = cnt if ans > cnt
  end
end

puts ans == 10101010 ? -1 : ans
