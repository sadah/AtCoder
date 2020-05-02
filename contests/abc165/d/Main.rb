require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

A, B, N = gets_i_list

if B <= N
  x = B - 1
  puts (A * x /  B).floor - A * (x / B).floor
else
  x = N
  puts (A * x /  B).floor - A * (x / B).floor
end