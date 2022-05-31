k = gets.to_i
x = 7%k

1.upto(k) do |i|
  if x == 0
    puts i
    exit
  end
  x = (x * 10 + 7) % k
end

puts -1
