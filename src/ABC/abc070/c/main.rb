n = gets.to_i
t = Array.new(n){ gets.to_i } # n行1列の改行区切りの整数を配列として受け取る
ans = 1
t.each do |i|
  ans = ans.lcm(i)
end

puts ans
