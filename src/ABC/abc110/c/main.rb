s = gets.chomp.bytes
t = gets.chomp.bytes
start = []
goal = []

s.size.times do |i|
  a = s[i]
  b = t[i]
  if !start[a].nil? || !goal[b].nil?
    if start[a] != b || goal[b] != a
      return puts 'No'
    end
  end
  start[a] = b
  goal[b] = a
end
puts 'Yes'
