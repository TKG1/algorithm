t = gets.to_i
ans = []
t.times do
  n, a, b, x, y, z = gets.split.map(&:to_i)
  p1 = n * x
  yy = [y, a*x].min
  zz = [z, b*x].min
  pa = n / a * y
  pb = n / b * z

  if n >= a
    amod = n - (n/a * a)
    while amod > 0
      if amod < b
        pa += x * amod
        amod = 0
      else
        i = amod / b
        small = [i*z, i*x].min
        pa += small
        amod -= i
      end
    end
  else
    pa = p1
  end

  if n >= b
    bmod = n - (n/b * b)
    while bmod > 0
      if bmod < a
        pb += x * bmod
        bmod = 0
      else
        i = bmod / a
        small = [i*y, i*x].min
        pb += small
        bmod -= i
      end
    end
  else
    pb = p1
  end

  ans << [p1, pa, pb].min
end

puts ans
