n = gets.to_i
i = 1000
while i <= 10000
  if i - n >= 0
    puts i-n
    exit
  end
  i += 1000
end
