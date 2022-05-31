n = gets.to_i
a = gets.split.map(&:to_i)
mod = 10**9 + 7
ta = a.tally
flag = true

if n.odd?
  i = 2
  flag = false if ta[0].nil? || ta[0] != 1
  while i < n
    if ta[i].nil? || ta[i] != 2
      flag = false
      break
    end
    i += 2
  end
else
  i = 1
  while i < n
    if ta[i].nil? || ta[i] != 2
      flag = false
      break
    end
    i += 2
  end
end

ans = 2.pow(n/2,mod)
puts flag ? ans : 0
