n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
i = 0
asm = a.map{|e| i += e}
asm.unshift(0)

ans = 0
n.times do |i|
  ar = k + asm[i]
  id = asm.bsearch_index{ _1 >= ar }
  next if id.nil?
  ans += (n - id + 1)
end

puts ans
