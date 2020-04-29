
# sumの追加
class Array
  define_method(:sum){self.inject(:+)} unless method_defined?(:sum)
end

# 多次元配列の初期化
N = 100
dp = Array.new(N + 1).map{Array.new(3,0)}

def min(a, b)
  a, b = a.to_i, b.to_i
  return a < b ? a : b
end

def max(a, b)
  a, b = a.to_i, b.to_i
  return a > b ? a : b
end

# 最大公約数
p 6.gcd(8) #=> 2
# 最小公倍数
p 6.lcm(8) #=> 24
# 最大公約数と最小公倍数
p 6.gcdlcm(8) #=> [2, 24]

# https://qiita.com/jkr_2255/items/3c9bc8273da818a39810
# 組み合わせの総数
# n個から、k個を取り出す場合の総数
#
# https://mathtrain.jp/tyohukuc
# 重複あり組み合わせの場合は nHk = n+k-1Ck
def count_combi(n, k)
  k = n - k if 2 * k > n
  return 1 if k == 0
  ((n - k + 1)..n).inject(&:*) / ((1..k).inject(&:*))
end

# https://qiita.com/rtoya/items/6d248b0817acd399603b
# 階乗
def factorial(number)
  (1..number).inject(1,:*)
end

# 配列に出現する数値をグループ化
# {1=>[1, 1, 1], 2=>[2], 3=>[3, 3]}
a_list =[]
p a_list.group_by(&:itself)

# 配列に出現する数値をカウント
# {1=>3, 2=>1, 3=>2}
a_list =[]
p a_list.group_by(&:itself).map{|k,v| [k, v.count] }.to_h

# hashから最大値を持つk,vを返却
{}.max_by{|k,v| v }

# Ruby で競技プログラミングをするときのまとめ（多次元配列編）
# https://qiita.com/n4o847/items/afaec6629e21fd080e97
H, W = 0
# 4方向走査
H.times do |i|
  W.times do |j|
    [
      [-1,  0], # 上
      [ 1,  0], # 下
      [ 0, -1], # 左
      [ 0,  1], # 右
    ].each do |di, dj|
      if di == 0 && dj == 0
        # c[i][j] の処理
      elsif 0 <= i + di && i + di < H && 0 <= j + dj && j + dj < W
        # c[i + di][j + dj] の処理
      else
        # 範囲外のときの処理
      end
    end
    # c[i][j] の処理
  end
end

# 8方向走査
H.times do |i|
  W.times do |j|
    (-1..1).each do |di|
      (-1..1).each do |dj|
        if di == 0 && dj == 0
          # c[i][j] の処理
        elsif 0 <= i + di && i + di < H && 0 <= j + dj && j + dj < W
          # c[i + di][j + dj] の処理
        else
          # 範囲外のときの処理
        end
      end
    end
    # c[i][j] の処理
  end
end
