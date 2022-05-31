r, x, y = gets.split.map(&:to_i)

a = Math.sqrt(x*x+y*y)

ans = a / r
if ans >= 1
  puts ans.ceil
else
  puts ans.ceil + 1
end
