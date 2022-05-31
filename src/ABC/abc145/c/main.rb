n = gets.to_i
xy = Array.new(n){ gets.split.map(&:to_i) } # n行m列の整数を2次元配列で受け取る

ans = 0
k = 0
(0...n).to_a.permutation(n) do |per|
  (n-1).times do |i|
    x = (xy[per[i]][0] - xy[per[i+1]][0]) ** 2
    y = (xy[per[i]][1] - xy[per[i+1]][1]) ** 2
    ans += Math.sqrt(x+y)
  end
  k+=1
end

puts ans / k
