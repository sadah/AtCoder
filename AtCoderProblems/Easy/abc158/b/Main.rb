require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
N, A, B = gets_i_list

count = N / (A + B)
mod = N % (A + B)

puts count * A + [mod, A].min
