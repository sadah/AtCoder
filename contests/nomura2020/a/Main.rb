require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}


# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
h1, m1, h2, m2, k = gets_i_list

if m2 >= m1
  total = (h2 - h1) * 60 + (m2 - m1)
else
  total = (h2 - h1 - 1) * 60 + (60 + m2 - m1)
end

puts total - k