n, q = gets.split.map(&:to_i)

mae = Array.new(n+1, -1)
ato = Array.new(n+1, -1)

1.upto(q) do |i|
  o, x, y = gets.split.map(&:to_i)
  if o == 1
    mae[y] = x
    ato[x] = y
  elsif o == 2
    mae[y] = -1
    ato[x] = -1
  else
    while mae[x] != -1
      x = mae[x]
    end
    ans = []
    while x != -1
      ans << x
      x = ato[x]
    end
    s = ans.size
    ans.unshift(s)
    puts ans.join(' ')
  end
end
