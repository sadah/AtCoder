require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
N, M, X = gets_i_list
a_list = gets_i_list

z_cost = 0
n_cost = 0

a_list.each do |a|
  if X < a
    n_cost += 1
  else
    z_cost += 1
  end
end

puts [z_cost, n_cost].min