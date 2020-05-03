require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, K = gets_i_list
a_list = []
K.times do
  gets_i
  a_list.push(gets_i_list)
end
puts N - a_list.flatten.uniq.size