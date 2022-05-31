n = gets.to_i
a = Array.new(n){ gets.chomp } # n行1列の改行区切りの整数を配列として受け取る
puts a.uniq.size
