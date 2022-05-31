n = gets.to_i
a = gets.split.map(&:to_i).sort

ans = 1
inf = 10 ** 18
n.times do |i|
  ans *= a[i]
  if ans > inf
    puts -1
    exit
  end
end

puts ans
