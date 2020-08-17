require 'pp'
require 'prime'

$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
n = gets_i
max = (n ** 0.5).ceil
min = n
1.upto(max) do |i|
  if n % i == 0
    min = [min, i + n / i - 2].min
  end
end

puts min
