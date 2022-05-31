require 'set'
n, k = gets.split.map(&:to_i)
s = Array.new(n){ gets.chomp } # n行m列の整数を2次元配列で受け取る
ok = 0

(1<<n).times do |bit|
  cnt = []
  n.times do |j|
    if bit & (1<<j) != 0
      cnt << s[j] # 選んだ文字列を貯める
    end
  end

  ans = Set.new
  ('a'..'z').each do |i|
    t = 0
    cnt.size.times do |j|
      t += cnt[j].count(i)
    end
    if t == k
      ans << i
    end
  end
  ok = ans.size if ok < ans.size
end

puts ok
