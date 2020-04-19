require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, M = gets_i_list
a_list = gets_i_list

hw_total = a_list.sum

if N >= hw_total
  puts N - hw_total
else
  puts -1
end
