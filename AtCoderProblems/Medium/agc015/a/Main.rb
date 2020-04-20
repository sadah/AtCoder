require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, A, B = gets_i_list
size = B - A + 1

if A > B
  puts 0
elsif N == 1
  puts 0 if A != B
  puts 1 if A == B
else
  min = A * (N - 1) + B
  max = A + B * (N - 1)
  puts max - min + 1
end
