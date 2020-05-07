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
a_list, b_list = [], []
N.times do
  a, b = gets_i_list
  a_list.push(a)
  b_list.push(b)
end
a_list.reverse!
b_list.reverse!

total = 0
0.upto(N-1) do |i|
  a = a_list[i] + total
  b = b_list[i]
  diff = 0
  diff = b - (a % b) if a % b != 0
  total += diff
end

puts total