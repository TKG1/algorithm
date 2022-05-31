n, x = gets.split.map(&:to_i)
m = Array.new(n){ gets.to_i } # n行1列の改行区切りの整数を配列として受け取る
x -= m.sum
puts n + (x/m.min)
