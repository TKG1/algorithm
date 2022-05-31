n, m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

i = 0
j = 0
asm = a.map{|e| i+=e }.unshift(0)
bsm = b.map{|e| j+=e }.unshift(0)

ans = 0
j = m
(n+1).times do |i|
  while 0 <= j && k < asm[i] + bsm[j]
    j -= 1
  end
  if 0 <= j
    ans = [ans, i+j].max
  end
end

puts ans
