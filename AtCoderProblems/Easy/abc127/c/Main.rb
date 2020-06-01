require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
N, M = gets_i_list

l_list, r_list = [], []
M.times do |i|
   l_list[i], r_list[i] = gets_i_list
end

ans = if r_list.min - l_list.max >= 0
  r_list.min - l_list.max + 1
else
  0
end

puts ans
