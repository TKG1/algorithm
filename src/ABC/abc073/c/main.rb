n = gets.to_i

h = {}
n.times do
  a = gets.to_i
  if h[a].nil?
    h[a] = 1
  else
    h.delete(a)
  end
end

puts h.size
