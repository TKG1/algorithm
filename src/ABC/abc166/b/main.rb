n, k = gets.split.map(&:to_i)
ans = Array.new(n, false)
k.times do |i|
  d = gets.to_i
  a = gets.split.map(&:to_i)
  a.each do |j|
    ans[j-1] = true
  end
end

puts ans.count(false)
