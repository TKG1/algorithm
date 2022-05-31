a, b = gets.split.map(&:to_i)

div, mod = (b-a).divmod(a-1)
div += 1
if mod > 0
  div+=1
end

puts div
