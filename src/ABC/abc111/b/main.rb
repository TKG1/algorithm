n = gets.to_i
while true
  x = n.to_s.chars
  if x.all?{|e| e == x[0] }
    return puts n
  end
  n += 1
end
