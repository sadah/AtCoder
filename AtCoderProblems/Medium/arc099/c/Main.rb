require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, K = gets_i_list
a_list = gets_i_list

puts ( (N - K).to_f / (K - 1) ).ceil + 1
