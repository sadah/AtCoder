require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

N, d_list = gets_n_and_i_list
M, t_list = gets_n_and_i_list

d_count_hash = d_list.group_by(&:itself).map{|k,v| [k, v.count] }.to_h

t_list.each do |t|
  count = d_count_hash[t]
  if count.nil? || count.zero?
    puts "NO"
    exit
  else
    d_count_hash[t] = count - 1
  end
end

puts "YES"
