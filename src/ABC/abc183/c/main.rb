n, k = gets.split.map(&:to_i)
t = Array.new(n){ gets.split.map(&:to_i) } # n行m列の整数を2次元配列で受け取る
ans = 0
(2..n).to_a.permutation(n-1) do |per|
  cnt = t[0][per[0]-1] + t[per[-1]-1][0]
  (per.size-1).times do |i|
    cnt += t[per[i]-1][per[i+1]-1]
  end
  if cnt == k
    ans += 1
  end
end

puts ans
