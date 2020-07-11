require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
l, r, d = gets_i_list

count = 0
l.upto(r) do |i|
  if i % d == 0
    count += 1
  end
end

puts count
