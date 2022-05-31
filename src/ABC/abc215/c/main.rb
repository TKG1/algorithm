s, k = gets.chomp.split(' ')

ss = s.split('')
ans = []

ss.permutation(s.size) do |per|
  ans << per
end

puts ans.uniq.sort[k.to_i-1].join
