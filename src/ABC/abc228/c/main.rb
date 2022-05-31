N, K = gets.split.map(&:to_i)
sum = []
N.times do |i|
  a = gets.split.map(&:to_i)
  sum[i] = a.sum
end
s = sum.max(K)
N.times do |i|
  if sum[i] + 300 >= s[K-1]
    puts 'Yes'
  else
    puts 'No'
  end
end
