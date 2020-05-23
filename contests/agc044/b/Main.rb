require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

N, a_list = gets_n_and_i_list
N = 500
a_list = (1..(N*N)).to_a.sample(N*N)

H, W = N, N
board = (1..N**2).each_slice(N).map{|a| a}

dpp board

total = 0
a_list.each do |a|
  j = nil
  i = board.index{|c| j = c.index(a)}
  dpp [i, j]

  # 上
  u_count = 0.upto(j-1).count do |uj|
    board[i][uj] != 0
  end
  # 下
  d_count = (j+1).upto(N-1).count do |dj|
    board[i][dj] != 0
  end
  # 左
  l_count = 0.upto(i-1).count do |li|
    board[li][j] != 0
  end
  # 右
  r_count = (i+1).upto(N-1).count do |ri|
    board[ri][j] != 0
  end
  board[i][j] = 0
  total += [u_count, d_count, l_count, r_count].min
end

puts total