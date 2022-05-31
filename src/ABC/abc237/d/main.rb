# https://atcoder.jp/contests/abc237/tasks/abc237_d
N = gets.to_i
S = gets.chomp.split('')
i = N - 1
ans = [N]
while 0 <= i
  if S[i] == 'R'
    ans.unshift(i)
  else
    ans << i
  end
  i -= 1
end

puts ans.join(' ')
