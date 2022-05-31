n = gets.to_i
a = gets.split.map(&:to_i)

i = 0
b = a.map{|e| i+=1; e-i}.sort
mid1 = b[n/2]

sum1 = 0
n.times do |i|
  sum1 += (b[i]-mid1).abs
end
puts sum1
