require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
x = gets_i
max = 0

1.upto(32) do |b|
  2.upto(10) do |pp|
    a = b**pp
    max = a if x >= a && a >= max
  end
end

puts max