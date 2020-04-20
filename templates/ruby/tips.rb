
# 配列に出現する数値をグループ化
# {1=>[1, 1, 1], 2=>[2], 3=>[3, 3]}
a_list =[]
p a_list.group_by(&:itself)

# 配列に出現する数値をカウント
# {1=>3, 2=>1, 3=>2}
a_list =[]
p a_list.group_by(&:itself).map{|k,v| [k, v.count] }.to_h


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
