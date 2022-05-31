a, b, k = gets.split.map(&:to_i)

i = 0
while a < b
  a *= k
  i+=1
end

puts i
