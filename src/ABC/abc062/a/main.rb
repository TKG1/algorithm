x, y = gets.split.map(&:to_i)
a = [1,3,5,7,8,10,12]
b = [4,6,9,11]
c = [2]

if a.include?(x)
  x = 'a'
elsif b.include?(x)
  x = 'b'
else
  x = 'c'
end

if a.include?(y)
  y = 'a'
elsif b.include?(y)
  y = 'b'
else
  y = 'c'
end

puts x == y ? 'Yes' : 'No'
