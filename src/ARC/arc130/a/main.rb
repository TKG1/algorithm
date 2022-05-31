N = gets.to_i
S = gets.chomp.bytes

cnt = 1
ans = 0
check = false

N.times do |i|
  if S[i] == S[i+1]
    cnt += 1
    check = true
  else
    ans += (cnt*(cnt-1)/2) if check
    check = false
    cnt = 1
  end
end

puts ans
