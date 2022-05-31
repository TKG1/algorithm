n = gets.chomp
ans = false
cnt = 1
(n.size-1).times do |i|
  cnt = n[i] == n[i+1] ? cnt+1 : 1
  ans = true if cnt >= 3
end
puts ans ? 'Yes' : 'No'
