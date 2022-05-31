n = gets.to_i
csf = Array.new(n-1){ gets.split.map(&:to_i) } # n行m列の整数を2次元配列で受け取る
a = Array.new(n-1, 0)

n.times do |i|

  cnt = 0
  j = i
  while j < n-1
    c1, s1, f1 = csf[j]

    cnt = [cnt, s1].max
    d = cnt - s1
    d = d % f1 != 0 ? f1 - (d % f1) : 0
    cnt += d+c1
    j += 1
  end

  puts cnt
end
