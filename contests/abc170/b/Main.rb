require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
x, y = gets_i_list

0.upto(x) do |a|
  b = x - a
  if (2 * a + 4 * b) == y
    puts "Yes"
    exit
  end
end

puts "No"