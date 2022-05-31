require 'set'
def enumdiv(n)
  res = Set.new
  i = 1
  while i * i <= n
    if n % i == 0
      res << i
      res << (n / i)
    end
    i += 1
  end
  return res
end

n = gets.to_i
a = gets.split.map(&:to_i)
cnt = []
n.times do |i|
  cnt[a[i]] ||= 0
  cnt[a[i]] += 1
end

ans = 0
n.times do |i|
  divs = enumdiv(a[i])
  divs.each do |div|
    cntj = cnt[div]
    cntk = cnt[a[i] / div]
    ans += cntj * cntk if cntj && cntk
  end
end

puts ans
