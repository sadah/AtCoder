def gets_HW_char
  h, w = gets.split.map(&:to_i)
  board = h.times.map { gets.chomp.chars }
  return h, w, board
end

H, W, c = gets_HW_char

H.times do |i|
  W.times do |j|
    count = 0
    (-1..1).each do |di|
      (-1..1).each do |dj|
        if di==0 && dj==0
          # c[i][j] の処理
        elsif 0 <= i + di && i + di < H && 0 <= j + dj && j + dj < W
          # c[i + di][j + dj] の処理
          count += 1 if c[i + di][j + dj] == "#"
        else
          # 範囲外のときの処理
        end
      end
    end
    # c[i][j] の処理
    c[i][j] = count.to_s if c[i][j] != "#"
  end
end

c.each do |e|
  puts e.join
end
