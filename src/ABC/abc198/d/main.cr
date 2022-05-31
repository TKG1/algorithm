sa = read_line
sb = read_line
sc = read_line
cnt = Hash(Char, Int32).new(0)
sa.each_char{|w| cnt[w] += 1}
sb.each_char{|w| cnt[w] += 1}
sc.each_char{|w| cnt[w] += 1}

c = cnt.size
if c > 10
  puts "UNSOLVABLE"
  exit
end

k = cnt.keys
ans = ["0"]
("0".."9").to_a.each_permutation(c) do |per|
  h = Hash.zip(k, per)
  next if h[sa[0]] == "0" || h[sb[0]] == "0" || h[sc[0]] == "0"
  a = ""
  b = ""
  c = ""
  sa.each_char{|w| a+=h[w]}
  sb.each_char{|w| b+=h[w]}
  sc.each_char{|w| c+=h[w]}

  if a.to_i64 + b.to_i64 == c.to_i64
    ans = [a, b, c]
    break
  end
end

if ans.size == 1
  puts "UNSOLVABLE"
else
  puts ans.join("\n")
end
