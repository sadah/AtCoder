require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split("").map(&:to_i)
end

nlist = gets_i_list
c = nlist.first
k = nlist.size

dpp nlist

if nlist.sum == c + 9 * (k -1)
  puts c + 9 * (k -1)
else
  puts c + 9 * (k - 1) - 1
end