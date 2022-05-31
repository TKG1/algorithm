n = gets.to_i
f = Array.new(n){gets.split.map(&:to_i)}
pp = Array.new(n){gets.split.map(&:to_i)}

ans = -101010101010
bit = 1
while bit < (1 << 10)
  sm = 0
  n.times do |i|
    c = 0
    10.times do |j|
      if (bit & (1 << j)) != 0
        c += 1 if f[i][j] == 1
      end
    end

    sm += pp[i][c]
  end

  ans = [ans, sm].max
  bit += 1
end

puts ans
