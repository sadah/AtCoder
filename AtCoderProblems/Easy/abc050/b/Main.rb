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
tlist = gets_i_list
m = gets_i
total = tlist.sum

m.times do
  p, x = gets_i_list
  puts total - tlist[p-1] + x
end
