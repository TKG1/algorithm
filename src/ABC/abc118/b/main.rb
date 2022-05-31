n, m = gets.split.map(&:to_i)
a = Array.new(n){ gets.split.map(&:to_i) } # n行m列の整数を2次元配列で受け取る
c = []
a.each do |k, *ai|
  ai.each do |i|
    c[i] ||= 0
    c[i] += 1
  end
end

ans = 0
c.each do |i|
  if i == n
    ans += 1
  end
end

puts ans
