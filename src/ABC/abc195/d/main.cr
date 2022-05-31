n, m, q = read_line.split.map(&.to_i)
wv = Array.new(n) { read_line.split.map(&.to_i) }.sort
i = -1
x = read_line.split.map { |e| i += 1; [e.to_i, i] }.sort

ans = [] of Int64
q.times do
  l, r = read_line.split.map(&.to_i)
  l -= 1; r -= 1

  sum = 0i64
  cnt = Hash(Int32, Int32).new(0)

  m.times do |i|
    xi, j = x[i]
    s = {0, -1}
    next if l <= j && j <= r

    n.times do |k|
      w, v = wv[k]
      next if w > xi || cnt[k] == 1

      s = {v, k} if v > s[0]
    end
    if s[1] != -1
      cnt[s[1]] = 1
      sum += s[0]
    end
  end
  ans << sum
end

puts ans.join("\n")
