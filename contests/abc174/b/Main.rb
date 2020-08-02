require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
n, d = gets_i_list

dd = d * d
ans = 0

n.times do
  x, y = gets_i_list
  ans += 1 if dd >= x * x + y * y
end

puts ans