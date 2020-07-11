require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
n, a_list = gets_n_and_i_list

count = 0
a_list.each_with_index do |a, i|
  if i.even? && a.odd?
    count += 1
  end
end

puts count