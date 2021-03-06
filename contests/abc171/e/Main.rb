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
n = gets_i
a_list = gets_i_list
axor = a_list.inject(&:^)

ans = []

0.upto(n-1) do |i|
  ans.push(axor ^ a_list[i])
end

puts ans.join(" ")