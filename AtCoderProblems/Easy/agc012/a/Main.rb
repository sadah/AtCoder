require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
n, a_list = gets_n_and_i_list
total = 0
a_list = a_list.sort.reverse

2.step(2*n, 2) do |i|
  a_list[i-1]
  total += a_list[i-1]
end

p total