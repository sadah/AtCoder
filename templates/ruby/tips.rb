# Ruby で競技プログラミングをするときのまとめ（多次元配列編）
# https://qiita.com/n4o847/items/afaec6629e21fd080e97

# 4方向走査
H.times do |i|
  W.times do |j|
    [
      [-1,  0], # 上
      [ 1,  0], # 下
      [ 0, -1], # 左
      [ 0,  1], # 右
    ].each do |di, dj|
      if 0<=i+di && i+di<H && 0<=j+dj && j+dj<W
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
        if di==0 && dj==0
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
