n = gets.to_i
s = Array.new(2){gets.chomp.chars}
mod = 1000000007

ans = 1
x = 0
pre = -1

while x < n
  if s[0][x] == s[1][x]
    if pre < 0
      ans = 3
    elsif pre == 0
      ans *= 2
    end
    x += 1
    pre = 0
  else
    if pre < 0
      ans = 6
    elsif pre == 0
      ans *= 2
    else
      ans *= 3
    end
    x += 2
    pre = 1
  end
end

puts ans % mod
