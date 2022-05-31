x = Array.new(5){ gets.to_i }
k = gets.to_i

ans = true
0.upto(3) do |i|
  (i+1).upto(4) do |j|
    if x[j] - x[i] > k
      ans = false
    end
  end
end
puts ans ? 'Yay!' : ':('
