require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
N, K, Q = gets_i_list

winners = []
Q.times do
  winners.push gets_i
end

win_count = winners.group_by(&:itself).map{|k,v| [k, v.count] }.to_h

dpp win_count
1.upto(N) do |i|
  puts K + win_count[i].to_i - Q > 0 ? "Yes" : "No"
end