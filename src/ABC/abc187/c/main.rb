require 'set'
n = gets.to_i
t = Set.new
n.times do |i|
  s = gets.chomp
  t << s
end

t.each do |i|
  if i[0] == '!'
    a = i[1,i.size]
    if t.include?(a)
      puts a
      exit
    end
  else
    a = '!'+i
    if t.include?(a)
      puts i
      exit
    end
  end
end

puts 'satisfiable'
