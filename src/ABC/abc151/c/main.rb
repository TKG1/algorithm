n, m = gets.split.map(&:to_i)
ps = Array.new(m){gets.chomp.split}
t = {}

m.times do |i|
  pi, s = ps[i][0].to_i, ps[i][1]
  t[pi] ||= [0, 0]
  next if t[pi][0] == 1
  if s == 'WA'
    t[pi][1] += 1
  else
    t[pi][0] = 1
  end
end

ac = 0
wa = 0

t.each do |a,w|
  next if w[0] == 0
  ac += w[0]
  wa += w[1]
end

puts "#{ac} #{wa}"
