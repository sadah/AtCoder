require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N = gets_i
a_list, b_list = [], []
N.times do |i|
  a_list[i], b_list[i] = gets_i_list
end

a_list.sort!
b_list.sort!

if N.even?
  i1, i2 = N/2 - 1, N/2
  a1, b1 = a_list[i1], b_list[i1]
  a2, b2 = a_list[i2], b_list[i2]
  puts (b1 + b2) - (a1 + a2) + 1
else
  i1 = N/2
  a1, b1 = a_list[i1], b_list[i1]
  puts b1 - a1 + 1
end