a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

ans = 0
0.upto(a) do |i|
  0.upto(b) do |j|
    0.upto(c) do |k|
      if (i*500 + j*100 + k*50) == x
        ans += 1
      end
    end
  end
end
puts ans
