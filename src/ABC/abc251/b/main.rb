require 'set'
n, w = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

ans = Set.new
0.upto(n-1) do |i|
  if a[i] <= w
    ans << a[i]
  end
  (i+1).upto(n-1) do |j|
    if a[i] + a[j] <= w
      ans << a[i] + a[j]
    end
    (j+1).upto(n-1) do |k|
      if a[i] + a[j] + a[k] <= w
        ans << a[i] + a[j] + a[k]
      end
    end
  end
end

puts ans.size
