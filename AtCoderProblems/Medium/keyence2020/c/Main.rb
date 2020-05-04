require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
N, K, S = gets_i_list

s = S == 1 ? S + 1 : S - 1

ans = [S] * K + [s] * (N - K)
puts ans.join(" ")