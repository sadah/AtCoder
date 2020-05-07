require 'pp'

# サイズが H, W の文字の2次元配列を返却する
def gets_HW_char
  h, w = gets.split.map(&:to_i)
  board = h.times.map { gets.chomp.chars }
  return h, w, board
end
H, W, board = gets_HW_char

posH = 0
posW = 0

while posH < H && posW < W
  board[posH][posW] = "."
  if posH + 1 < H && board[posH + 1][posW] == "#"
    posH += 1
  else posH + 1 < W && board[posH][posW + 1] == "#"
    posW += 1
  end
end

puts board.flatten.include?("#") ? "Impossible" : "Possible"