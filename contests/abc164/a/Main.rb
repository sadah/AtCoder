require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

S, W = gets_i_list

puts W >= S ? "unsafe" : "safe"