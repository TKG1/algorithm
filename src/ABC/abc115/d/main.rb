def f(n, x) # 下からx番目のパティの枚数を返す
  return 1 if n == 0 # レベル0バーガーはパティ1枚
  return 0 if x <= 1 # バーガーの一番下はバンなので、パティ0枚
  x -= 1

  return f(n-1, x) if x <= @brg[n-1] # 下から1つ目のレベルL-1バーガー
  x -= @brg[n-1]

  return @pat[n-1] + 1 if x <= 1 # パティ1枚
  x -= 1

  return @pat[n-1] + 1 + f(n-1, x) if x <= @brg[n-1] # 下から2つ目のレベルL-1バーガー
  x -= @brg[n-1]

  return @pat[n] # 一番上はバン1枚、Lバーガーのパティの枚数
end

n, x = gets.split.map(&:to_i)

@pat = [1]
@brg = [1]
n.times do |i|
  @pat << @pat[i] * 2 + 1
  @brg << @brg[i] * 2 + 3
end

puts f(n, x)
