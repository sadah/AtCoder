require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
n, k = gets_i_list
p_list = gets_i_list

p_list.sort!

total = 0
k.times do |i|
  total += p_list[i]
end

puts total