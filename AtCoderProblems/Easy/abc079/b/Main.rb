require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
n = gets_i

l0 = 2
l1 = 1
l2 = l0 + l1

if n == 1
  puts l1
  return
end

2.upto(n) do
  l2 = l1 + l0
  l0 = l1
  l1 = l2
end

puts l2
