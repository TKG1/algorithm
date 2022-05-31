n = read_line
flag = false
flag = true if n == n.reverse
cnt = 0
i = -1
while n[i] == '0' && -n.size < i
  cnt += 1
  i += -1
end

n = ("0" * cnt) + n
flag = true if n == n.reverse
puts flag ? "Yes" : "No"
