require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
N, a_list = gets_n_and_i_list

a_list.sort!
total = 0
loop do
  if a_list.length == 1
    total = a_list[0]
    break
  end
  a_list = a_list.each_slice(2).map { |a, b| b ? a * b : a }
end

puts total > 10**18 ? -1 : total
