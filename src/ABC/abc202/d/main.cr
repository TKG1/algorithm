require "big"

def cmb(n,r)
  res = BigInt.new(1)
  n.downto(r+1) do |i|
    res *= i
  end
  1.upto(n-r) do |i|
    res //= i
  end
  return res
end

a, b, k = read_line.split.map(&.to_i64)

ans = ""
while a+b > 0
  if a == 0
    ans += ("b" * b)
    break
  end

  if b == 0
    ans += ("a" * a)
    break
  end

  x = cmb(a+b-1, a-1)
  if k <= x
    ans += "a"
    a -= 1
  else
    ans += "b"
    b -= 1
    k -= x
  end
end

puts ans
