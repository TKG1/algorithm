x = gets.to_i

m = 100
i = 1
while true
  m = m + (m/100)
  if m >= x
    puts i
    exit
  end
  i += 1
end
