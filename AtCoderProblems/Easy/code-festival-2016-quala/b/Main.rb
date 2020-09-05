require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
N, alist = gets_n_and_i_list

count = 0
alist.each_with_index do |a, i|
  if alist[a - 1] == i + 1
    count += 1
  end
end
puts count / 2