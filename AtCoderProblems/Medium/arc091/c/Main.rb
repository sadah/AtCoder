require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, M = gets_i_list

if N == 1 && M == 1
  puts 1
elsif N == 1 || M == 1
  puts [N, M].max - 2
else
  puts (N - 2) * (M - 2)
end
