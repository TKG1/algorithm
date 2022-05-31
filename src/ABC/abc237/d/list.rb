# 連結リストクラス
class List
  # セルの定義
  class Cell
    attr_accessor :data, :link
    def initialize(data, link = nil)
      @data = data
      @link = link
    end
  end

  # 初期化
  def initialize(*args)
    @top = Cell.new(nil)   # Header Cell をセット
    args.reverse_each do |x|
      insert!(0, x)
    end
  end

  attr_accessor :top
  protected :top, :top=

  # n 番目のセルを求める
  def nth(n)
    i = -1
    cp = @top
    while cp
      return cp if n == i
      i += 1
      cp = cp.link
    end
  end
  private :nth

  # n 番目にデータを挿入する
  def insert!(n, data)
    cp = nth(n - 1)
    if cp
      cp.link = Cell.new(data, cp.link)
      data
    end
  end

  # n 番目のデータを求める
  def at(n)
    cp = nth(n)
    cp.data if cp
  end

  # n 番目のデータを削除する
  def delete_at!(n)
    cp = nth(n - 1)
    if cp and cp.link
      data = cp.link.data
      cp.link = cp.link.link
      data
    end
  end

  # 空リストか
  def empty?
    !@top.link
  end

  # 演算子 [] の定義
  # 参照
  def [](n)
    at(n)
  end

  # 代入
  def []=(n, value)
    cp = nth(n)
    if cp
      cp.data = value
    end
  end

  # リストの連結
  def append(cp1, cp2)
    if !cp1
      cp2
    else
      Cell.new(cp1.data, append(cp1.link, cp2))
    end
  end
  private :append

  def +(other)
    raise TypeError unless other.instance_of?(List)
    ls = List.new
    ls.top.link = append(@top.link, other.top.link)
    ls
  end

  def *(n)
    ls = List.new
    n.times do
      ls.top.link = append(@top.link, ls.top.link)
    end
    ls
  end

  # Enumerable 用
  def each
    cp = @top.link
    while cp
      yield cp.data
      cp = cp.link
    end
    self
  end

  # 配列に変換
  def to_a
    a = []
    each do |x| a.push(x) end
    a
  end

  # 文字列に変換
  def to_s
    "(" << to_a.join(",") << ")"
  end

  def inspect
    sprintf("#<List:%#x>", self.object_id)
  end
end
