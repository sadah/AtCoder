require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
x = gets_i

mod = x % 11
ans = x / 11
if mod == 0
  puts ans * 2
elsif mod <= 6
  puts ans * 2 + 1
else
  puts ans * 2 + 2
end
