abc = gets.split.map(&:to_i)
flag = false
3.times do |i|
  a = abc[i]
  b = 0
  3.times do |j|
    next if i == j
    b += abc[j]
  end
  if a == b
    flag =true
  end
end

puts flag ? 'Yes' : 'No'
