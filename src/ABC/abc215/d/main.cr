def factorization(n : Int64, a : Array(Bool))
  i = 2i64
  while i * i <= n
    if n % i == 0
      while n % i == 0
        n //= i
      end
      a[i] = false
    end
    i += 1
  end
  if n != 1
    a[n] = false
  end
end

def prime_num(x : Int64, a : Array(Bool))
  i = 2i64
  while i <= x
    if !a[i]
      n = i * 2
      while n <= x
        a[n] = false
        n += i
      end
    end
    i += 1
  end
end

n, m = read_line.split.map(&.to_i64)
a = read_line.split.map(&.to_i64)
prime = Array.new(100010, true)

a.each do |ai|
  factorization(ai, prime)
end
prime_num(m, prime)

ans = [0i64]
1.upto(m) do |i|
  if prime[i]
    ans[0] += 1
    ans << i.to_i64
  end
end

puts ans.join("\n")
