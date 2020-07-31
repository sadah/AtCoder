require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返却する
def gets_s_list()
  gets.chomp.split(" ")
end

n = gets_i
list = []
n.times do |i|
  s, p = gets_s_list
  list.push [i+1, s, p.to_i]
end

list.sort_by{|x| [x[1], -x[2]]}.each{|x| puts x[0]}