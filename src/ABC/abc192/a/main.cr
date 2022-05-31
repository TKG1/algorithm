x = read_line.to_i
i = 100
while i <= 101010
  if x < i
    puts i - x
    exit
  end
  i += 100
end
