require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
a, b, c = gets_i_list.sort.reverse

ab = (a - b).abs
ac = (a - c).abs

if (ab + ac).even?
    puts (ab + ac) / 2
else
    puts (ab + ac + 1) / 2 + 1
end
