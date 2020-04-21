require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

K, N = gets_i_list
a_list = gets_i_list

diff_list = []

a_list.each_with_index do |a, i|
  if a_list[i+1].nil?
    next_a = a_list[0] + K
  else
    next_a = a_list[i+1]
  end
  diff_list.push(next_a - a)
end
puts K - diff_list.max
