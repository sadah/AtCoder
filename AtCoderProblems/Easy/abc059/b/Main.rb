require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
a, b = gets_i, gets_i

if a > b
  puts "GREATER"
elsif a < b
  puts "LESS"
else
  puts "EQUAL"
end