require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
x, y = gets_i_list
i = 1

loop do
  if x * 2 > y
    puts i
    break
  end
  x = x * 2
  i += 1
end