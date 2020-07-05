require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
N = gets_i


if N % 1000 == 0
  puts 0
else
  puts 1000 * (N/1000 + 1) - N
end