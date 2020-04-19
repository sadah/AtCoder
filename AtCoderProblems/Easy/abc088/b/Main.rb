require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N = gets_i
a_list = gets_i_list

a_total = 0
b_total = 0

a_list.sort.reverse.each_with_index do |a, i|
    if i.even?
      a_total += a
    else
      b_total += a
    end
end
puts a_total - b_total
