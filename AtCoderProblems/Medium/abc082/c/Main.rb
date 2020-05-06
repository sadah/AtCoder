require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

N, a_list = gets_n_and_i_list

count_hash = a_list.group_by(&:itself).map{|k,v| [k, v.count] }.to_h

total = 0
count_hash.keys.sort.each do |k|
  count = count_hash[k]
  if k > count
    total += count
  elsif k < count
    total += count - k
  end
end

puts total
