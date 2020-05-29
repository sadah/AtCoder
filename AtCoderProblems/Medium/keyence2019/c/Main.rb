require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}
# sumの追加
class Array
  define_method(:sum){self.inject(:+).to_i} unless method_defined?(:sum)
end

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
b_list = gets_i_list

negative_diffs = []
positive_diffs = []

0.upto(N-1) do |i|
  if a_list[i] < b_list[i]
    negative_diffs.push(b_list[i] - a_list[i])
  else a_list[i] > b_list[i]
    positive_diffs.push(a_list[i] - b_list[i])
  end
end

diff_total = negative_diffs.sum

if diff_total == 0
  puts "0"
  exit
else
  count = 0
  positive_diffs.sort!
  positive_diffs.reverse_each do |d|
    diff_total -= d
    count += 1
    break if diff_total <= 0
  end

  if diff_total <= 0
    puts count + negative_diffs.size
  else
    puts -1
  end
end