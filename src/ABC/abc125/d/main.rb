n = gets.to_i
a = gets.split.map(&:to_i)

sum = 0
min = 10101010101010
a.each do |i|
  sum += i.abs
  min = [min, (i-0).abs].min
end

cnt = a.count{|e| e < 0}
if cnt.odd?
  puts sum - (min*2)
else
  puts sum
end
