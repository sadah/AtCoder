require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map{|i|i.to_i-1}
end

N, b_list = gets_n_and_i_list
a_list = []
dpp b_list

N.times do |i|
  (b_list.size).downto(0) do |j|
    if j == b_list[j]
      a_list.push(j+1)
      b_list.delete_at(j)
      break
    end
  end
end

if a_list.size == N
  a_list.reverse_each do |a|
    puts a
  end
else
  puts -1
end
