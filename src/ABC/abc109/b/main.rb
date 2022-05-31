n = gets.to_i

h = {}
s = gets.chomp
h[s] = 1
t = s
ans = true
(n-1).times do
  si = gets.chomp
  if h[si].nil? && t[-1] == si[0]
    h[si] = 1
  else
    ans = false
  end
  t = si
end

puts ans ? 'Yes' : 'No'
