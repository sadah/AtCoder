require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

x1, y1, x2, y2 = gets_i_list

dx = x2 - x1
dy = y2 - y1

x3 = x2 - dy
y3 = y2 + dx

x4 = x3 - dx
y4 = y3 - dy


puts [x3,y3,x4,y4].join(" ")