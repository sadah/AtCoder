require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}


# 空白区切の入力値をBigDecimalの配列で返却する
require 'bigdecimal'
require 'bigdecimal/util'
def gets_d_list()
  gets.chomp.split(" ").map(&:to_d)
end
a, b = gets_d_list

puts (a*b).floor