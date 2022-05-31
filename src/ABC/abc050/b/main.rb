n = gets.to_i
t = gets.split.map(&:to_i)
tsum = t.sum
m = gets.to_i
m.times do
  pp, x = gets.split.map(&:to_i)
  puts tsum - (t[pp-1]-x)
end
