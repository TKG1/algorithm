s, k = read_line.split
a = Set(String).new

s.chars.sort.each_permutation(s.size) do |per|
  a << per.join
end

puts a.to_a[k.to_i-1]
