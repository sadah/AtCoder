require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

N, a_list = gets_n_and_i_list

edge_hash = a_list.group_by(&:itself).map{|k,v| [k, v.count] }.to_h

edge_hash = edge_hash.select do |k, v|
  v >= 2
end

if edge_hash.empty?
  puts 0
  exit
end

e1 = 0
edge_hash.keys.sort.reverse_each do |k|
  v = edge_hash[k]
  if v >= 4 && e1.zero?
    puts k * k
    exit
  elsif !e1.zero?
    puts e1 * k
    exit
  else
    e1 = k
  end
end