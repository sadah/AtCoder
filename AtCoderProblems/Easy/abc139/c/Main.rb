require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
n, h_list = gets_n_and_i_list

max_count = 0
count = 0

1.upto(n-1) do |i|
  if h_list[i-1] >= h_list[i]
    count += 1
  else
    max_count = [max_count, count].max
    count = 0
  end

  if i == n -1
    max_count = [max_count, count].max
  end

  dpp [h_list[i-1], h_list[i], count]
end

puts max_count