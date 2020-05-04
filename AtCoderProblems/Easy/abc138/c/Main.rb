require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_f)
end

N, v_list = gets_n_and_i_list

v_list.sort!

1.upto(v_list.size - 1) do |i|
  v_list[i] = (v_list[i] + v_list[i - 1]) / 2
end

puts v_list.last
