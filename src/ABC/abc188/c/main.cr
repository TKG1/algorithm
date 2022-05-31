n = read_line.to_i
i = 0
a = read_line.split.map{|e| i+=1; [e.to_i, i]}

l = a[0,(1<<n)//2].max
r = a[(1<<n)//2,(1<<n)].max

puts [l, r].min[1]
