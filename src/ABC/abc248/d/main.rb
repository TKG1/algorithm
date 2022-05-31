n = gets.to_i
a = gets.split.map(&:to_i)
hash = {}
n.times do |i|
  hash[a[i]] ||= []
  hash[a[i]] << i+1
end

q = gets.to_i
q.times do
  l, r, x = gets.split.map(&:to_i)
  index = hash[x]
  cnt = 0
  unless index.nil?
    ll = index.bsearch_index{_1>=l}
    rr = index.bsearch_index{_1>r}
    rr = index.size if rr.nil?
    if ll && rr
      cnt = rr - ll
    end
  end
  puts cnt
end
