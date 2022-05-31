n = read_line.to_i
a = read_line.split.map(&.to_i)
cnt = Array.new(n, 0)

a.each do |i|
  cnt[i-1] += 1
  if cnt[i-1] > 1
    puts "No"
    exit
  end
end
puts "Yes"
