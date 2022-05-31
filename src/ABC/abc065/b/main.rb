n = gets.to_i
a = Array.new(n){ gets.to_i } # n行1列の改行区切りの整数を配列として受け取る

cnt = 0
x = 0
2*n.times do
  x = a[x]-1
  cnt += 1
  if x == 1
    puts cnt
    exit
  end
end
puts -1
