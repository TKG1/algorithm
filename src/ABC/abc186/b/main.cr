h, w = gets.to_s.split.map{|e| e.to_i }
a = Array.new(h){ gets.to_s.split.map{|e| e.to_i }}

ans = 1010101010
0.upto(100) do |i|
  cnt = 0
  flag = true
  h.times do |y|
    w.times do |x|
      break flag = false if a[y][x] < i
      cnt += a[y][x] - i
    end
  end
  ans = cnt if ans > cnt && flag
end

puts ans
