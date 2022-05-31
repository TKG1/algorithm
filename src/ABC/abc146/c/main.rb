def bs(a,b,x)
  left = 0
  right = 10**9+1

  while (right-left) > 1
    mid = (right+left)/2
    n = a*mid+b*mid.to_s.size

    if x >= n
      left = mid
    else
      right = mid
    end
  end
  return left
end

a, b, x = gets.split.map(&:to_i)
puts bs(a,b,x)
