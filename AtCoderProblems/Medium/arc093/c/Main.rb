require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

N, a_list = gets_n_and_i_list
a_list.unshift(0)
a_list.push(0)

total = 0
(N+1).times do |i|
  total += (a_list[i]  - a_list[i + 1]).abs
end

1.upto(N) do |i|
  puts total - (a_list[i-1] - a_list[i]).abs - (a_list[i] - a_list[i+1]).abs + (a_list[i-1] - a_list[i+1]).abs
end