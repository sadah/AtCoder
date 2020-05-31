require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
N, a_list = gets_n_and_i_list

if a_list.first != 0
  puts -1
  exit
end

d_list = [1]

0.upto(N-2) do |i|
  if a_list[i+1] == 0
end