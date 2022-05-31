n = gets.to_i
a = gets.split.map(&:to_i)

bo = 0
be = 0
n.times do |i|
  if i.even?
    be += a[i]
  else
    bo += a[i]
  end
end

ans = [be-bo]
(n-1).times do |i|
  asm = 2*a[i] - ans[-1]
  ans << asm
end

puts ans.join(' ')
