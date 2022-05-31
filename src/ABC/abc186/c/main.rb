require 'set'
n = gets.to_i
cnt = 0
x = 1
ans = Set.new
(1..n).each do |num|
  x *= 10 if x <= num
  flag = true
  j = x
  i = num
  while j > 1
    break flag = false if i / j == 7 || i % 10 == 7
    i %= j
    j /= 10
  end
  if flag
    j = x
    i = num.to_s(8).to_i
    while j > 1
      break flag = false if i / j == 7 || i % 10 == 7
      i %= j
      j /= 10
    end
  end
  unless flag
    ans << num
  end
end

puts n - ans.size
