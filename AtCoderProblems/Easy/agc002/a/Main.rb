require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
a, b = gets_i_list

if (a..b).include?(0)
  puts 'Zero'
elsif b < 0 && (b-a).even?
  puts 'Negative'
else
  puts 'Positive'
end
