# https://atcoder.jp/contests/atc001/tasks/unionfind_a
# Disjoint Set Union
class DSU
  def initialize(n)
    @n = n
    @parent_or_size = Array.new(n, -1)
    # root node: -1 * component size
    # otherwise: parent
  end

  attr_reader :parent_or_size, :n

  def merge(a, b)
    x = leader(a)
    y = leader(b)
    return x if x == y

    x, y = y, x if -@parent_or_size[x] < -@parent_or_size[y]
    @parent_or_size[x] += @parent_or_size[y]
    @parent_or_size[y] = x
  end
  alias unite merge

  def same?(a, b)
    leader(a) == leader(b)
  end
  alias same same?

  def leader(a)
    unless 0 <= a && a < @n
      raise ArgumentError.new, "#{a} is out of range (0...#{@n})"
    end

    @parent_or_size[a] < 0 ? a : (@parent_or_size[a] = leader(@parent_or_size[a]))
  end
  alias root leader
  alias find leader

  def size(a)
    -@parent_or_size[leader(a)]
  end

  def groups
    (0 ... @parent_or_size.size).group_by{ |i| leader(i) }.values
  end
end

UnionFind = DSU

n, m = gets.split.map(&:to_i)
ab = Array.new(m){ gets.split.map(&:to_i) }

ans = 0
m.times do |i|
  uni = UnionFind.new(n)
  m.times do |j|
    next if i == j
    a, b = ab[j]
    a-=1
    b-=1
    uni.merge(a, b)
  end
  ans += 1 if uni.groups.size > 1
end
puts ans
