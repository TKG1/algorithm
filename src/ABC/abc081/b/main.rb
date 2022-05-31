n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
flag = true
while flag
  if a.all?(&:even?)
    a = a.map{|e| e/2 }
    ans += 1
  else
    flag = false
  end
end
puts ans
