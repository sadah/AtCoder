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
alist = gets_i_list
blist = gets_i_list
total = alist.sum
n.times do |i|
  a, b = alist[i], blist[i]
  if a >= b
    alist[i] = a - b
  else
    alist[i] = 0
    c = a + alist[i+1] - b
    alist[i+1] = c < 0 ? 0 : c
  end
end
puts total - alist.sum
