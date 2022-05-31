n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
b = gets.split.map(&:to_i).sort

cnt = 10 ** 10
n.times do |i|
  num = b.bsearch_index{_1>=a[i]}
  num = m-1 if num.nil?
  if b[num] && b[num-1]
    s = [(a[i]-b[num]).abs, (a[i]-b[num-1]).abs].min
    cnt = s if cnt > s
  end
end

puts cnt
