a,b,c,d = gets.chomp.split('').map(&:to_i)

ans = ''
['-', '+'].repeated_permutation(3) do |i|
  x, y, z = i
  num = 0
  num += x == '-' ? (a-b) : (a+b)
  num += y == '-' ? -c : c
  num += z == '-' ? -d : d
  if num == 7
    ans = "#{a}#{x}#{b}#{y}#{c}#{z}#{d}=7"
  end
end
puts ans
