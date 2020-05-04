require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, P = gets_i_list
a_list = gets_i_list

if a_list.select(&:odd?).empty?
  puts 2**N if P == 0
  puts 0    if P == 1
else
  puts 2**(N - 1)
end

