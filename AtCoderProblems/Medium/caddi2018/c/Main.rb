require 'pp'
require 'prime'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
N, P = gets_i_list

factors = Prime.prime_division(P)

max = 1
factors.each do |num, count|
  pow = count / N
  if pow > 0
    max *= num ** pow
  end
end

puts max