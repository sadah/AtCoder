require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, K = gets_i_list
a_list = gets_i_list

type_count = a_list.uniq.size
count_hash = a_list.group_by(&:itself).map{|k,v| [k, v.count] }.to_h

if type_count <= K
  puts 0
  exit
end

count_list = count_hash.values.sort
puts count_list.slice(0,(type_count - K)).inject(:+)
