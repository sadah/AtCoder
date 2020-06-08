require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

N = gets_i
a_list = []
N.times do
  a_list.push gets_i
end

a2_list = a_list.sort.reverse

max1 = a2_list[0]
max2 = a2_list[1]

a_list.each do |a|
  if a == max1
    puts max2
  else
    puts max1
  end
end