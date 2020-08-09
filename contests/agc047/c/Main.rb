require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
n = gets_i

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  mp = 200003
  gets.chomp.split(" ").map do |a|
    a.to_i % mp
  end
end

alist = gets_i_list

p alist
pp alist.combination(2).to_a.sort
pp alist.uniq.combination(2).to_a.sort
