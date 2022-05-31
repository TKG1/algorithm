n, x = gets.split.map(&:to_i)
cnt = 0
n.times do |i|
  v, pi = gets.split.map(&:to_i)
  cnt += v * pi
  if cnt > x * 100
    puts i+1
    exit
  end
end

puts -1
