N = gets.to_i
A = gets.split.map(&:to_i)

ans = Array.new(N, 0)

(N-1).times do |i|
  if A[i] > A[i+1]
    ans[i] ^= 1
    ans[i+1] ^= 1
  end
end

puts ans.join(' ')
