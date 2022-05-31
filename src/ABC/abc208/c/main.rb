n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = a.sort

div, mod = k.divmod(n)
a.each do |i|
  if i < b[mod]
    puts div + 1
  else
    puts div
  end
end
