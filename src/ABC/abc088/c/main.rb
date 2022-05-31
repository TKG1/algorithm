c = Array.new(3){ gets.split.map(&:to_i) } # n行m列の整数を2次元配列で受け取る

a = [c[0][0], c[1][0], c[2][0]]
b = [c[0][0]-a[0], c[0][1]-a[0], c[0][2]-a[0]]

ok = true
3.times do |i|
  3.times do |j|
    if a[i] + b[j] != c[i][j]
      ok = false
    end
  end
end

puts ok ? 'Yes' : 'No'
