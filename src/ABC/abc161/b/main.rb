n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
sum = a.sum
cnt = 0
n.times do |i|
  if a[i] >= sum/(1.0*4*m)
    cnt+=1
  end
end

puts cnt >= m ? 'Yes' : 'No'
