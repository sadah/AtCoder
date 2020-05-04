require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
N, p_list = gets_n_and_i_list

list = []
1.upto(N) do |i|
  list.push(i) if i == p_list[i-1]
end

count = list.size 
1.upto(list.size - 1) do |i|
  if list[i] - 1 == list[i - 1]
    list[i] = list[i-1]
    count -= 1 
  end
end

puts count