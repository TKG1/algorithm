n, l = gets.split.map(&:to_i)
m = Array.new(n){ gets.chomp } # n行m列の整数を2次元配列で受け取る
puts m.sort.join
