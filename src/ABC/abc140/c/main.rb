n = gets.to_i
b = gets.split.map(&:to_i)
a = [10**6]

0.upto(n-2) do |i|
  a[i+1] = b[i]
  a[i] = [a[i],a[i+1]].min
end

puts a.sum
