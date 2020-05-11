require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

# [a, b].min が遅いので
def min(a, b)
  return a < b ? a : b
end

A, B, M = gets_i_list
a_list = gets_i_list
b_list = gets_i_list

total = a_list.min + b_list.min
M.times do
  x, y, c = gets_i_list
  total = min(a_list[x - 1] + b_list[y - 1] - c, total)
end

puts total