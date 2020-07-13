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
# S = gets_s

h, w = gets_i_list

puts "#" * (w + 2)
h.times do
  s = gets_s
  puts "#" + s + "#"
end
puts "#" * (w + 2)
