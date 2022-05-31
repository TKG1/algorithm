h, w = gets.split.map(&:to_i)
n = gets.to_i
a = gets.split.map(&:to_i)
ans = Array.new(h){Array.new(w)}

i = 0
h.times do |y|
  if y.even?
    0.upto(w-1) do |x|
      ans[y][x] = i+1
      a[i] -= 1
      i += 1 if a[i] == 0
    end
  else
    (w-1).downto(0) do |x|
      ans[y][x] = i+1
      a[i] -= 1
      i += 1 if a[i] == 0
    end
  end
end

h.times do |y|
  puts ans[y].join(' ')
end
