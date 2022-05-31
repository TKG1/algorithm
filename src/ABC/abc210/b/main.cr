n = read_line.to_i
s = read_line

n.times do |i|
  if s[i] == '1'
    puts i.even? ? "Takahashi" : "Aoki"
    exit
  end
end
