require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
n = gets_i

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
a1 = gets_i_list
a2 = gets_i_list

max = 0
0.upto(n-1) do |i|
  max = [a1[0..i].sum + a2[i..n-1].sum, max].max
end

puts max