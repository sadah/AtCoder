require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
# N, M = gets_i_list
# list = gets_i_list

def m1(board, a, b)
  return board if a == b
  a, b = a - 1, b - 1
  ba, bb = board[a], board[b]
  board[a], board[b] = bb, ba
  board
end

def m2(board, a, b)
  return board if a == b
  tb = board.transpose
  a, b = a - 1, b - 1
  ba, bb = tb[a], tb[b]
  tb[a], tb[b] = bb, ba
  tb.transpose
end

def m3(board)
  board.transpose
end

def m4(board, a, b)
  a, b = a - 1, b - 1
  puts board[a][b]
  board
end

N = gets_i
Q = gets_i

board = [*0..(N*N-1)].each_slice(N).to_a

Q.times do
  query = gets_i_list
  if query[0] == 1
    a, b = query[1], query[2]
    board = m1(board, a, b)
  elsif query[0] == 2
    a, b = query[1], query[2]
    board = m2(board, a, b)
  elsif query[0] == 3
    board = m3(board)
  elsif query[0] == 4
    a, b = query[1], query[2]
    board = m4(board, a, b)
  end
end
