# https://atcoder.jp/contests/abc240/tasks/abc240_d
n = gets.to_i
a = gets.split.map(&:to_i)

stack = [[0, 0]]
cnt = 0

n.times do |i|
  cnt += 1
  if stack[-1][0] == a[i]
    stack[-1][1] += 1
  else
    stack << [a[i], 1]
  end
  if stack[-1][1] == a[i]
    stack.pop
    cnt -= a[i]
  end

  puts cnt
end
