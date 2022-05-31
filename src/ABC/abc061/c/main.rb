n, k = gets.split.map(&:to_i)
ary = []
n.times do
  a, b = gets.split.map(&:to_i)
  ary << [a, b]
end
ary.sort.each do |v|
  a, b = v
  k -= b
  if k <= 0
    puts a
    exit
  end
end
