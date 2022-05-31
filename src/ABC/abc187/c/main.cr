n = read_line.to_i
s = Array.new(n){ read_line }
st = s.tally

s.each do |c|
  t = c[0] == '!' ? c[1..] : '!' + c
  next unless st[t]?
  puts t.tr("!", "")
  exit
end

puts "satisfiable"
