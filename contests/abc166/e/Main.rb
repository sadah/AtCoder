require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

N, a_list = gets_n_and_i_list
l_list, r_list = [], []
a_list.map.with_index do |h, i|
  l_list[i] = i + 1 + h
  r_list[i] = i + 1 - h
end

count = 0
l_list.each do |l|
  count += r_list.count(l)
end

puts count