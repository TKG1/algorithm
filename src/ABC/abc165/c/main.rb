N, M, Q = gets.split.map(&:to_i)
ABCD = Array.new(Q){ gets.split.map(&:to_i) }

@a = []
@ans = 0
def dfs(c = 0, l = 1)
  if c == N
    tot = 0
    Q.times do |i|
      ai, bi, ci, di = ABCD[i]
      ai-=1; bi-=1;
      if @a[bi] - @a[ai] == ci
        tot += di
      end
    end
    return @ans = [tot, @ans].max
  end

  l.upto(M) do |i|
    @a[c] = i
    dfs(c+1, i)
  end
end

dfs()
puts @ans
