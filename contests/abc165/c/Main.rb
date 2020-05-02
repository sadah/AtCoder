require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, M, Q = gets_i_list
abcd_list = []
Q.times do
  abcd_list.push gets_i_list
end

a_max_list = (1..M).to_a
a_list_combi = a_max_list.repeated_combination(N).to_a

d_max_total = 0
a_list_combi.each do |a_list|
  d_total = 0
  abcd_list.each_with_index do |abcd|
    a, b, c, d = abcd
    b_a = a_list[b-1] - a_list[a-1]
    if b_a == c
      d_total += d
    end
  end
  d_max_total = [d_total, d_max_total].max
end

puts d_max_total
