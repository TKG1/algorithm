n = gets.to_i
a = Array.new(n){gets.to_i}

o, t = a.max(2)
n.times do |i|
  if a[i] == o
    puts t
  else
    puts o
  end
end
