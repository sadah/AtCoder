require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end

n, l = gets_i_list
slist = []

n.times do
  slist.push gets_s
end

puts slist.sort.join