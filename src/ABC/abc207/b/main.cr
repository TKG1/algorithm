a, b, c, d = read_line.split.map(&.to_i64)

ans = -1
diff = c*d-b
if 0 < diff
  ans = (a+diff-1)//diff
end
puts ans
