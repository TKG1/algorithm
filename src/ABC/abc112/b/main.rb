n, t = gets.split.map(&:to_i)
ct = Array.new(n){ gets.split.map(&:to_i) } # n行m列の整数を2次元配列で受け取る

ans = 1001
ct.each do |ci, ti|
  next if ti > t
  ans = ci if ans > ci
end

puts ans == 1001 ? 'TLE' : ans
