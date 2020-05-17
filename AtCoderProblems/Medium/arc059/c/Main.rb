require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}
class Array
  define_method(:sum){self.inject(:+)} unless method_defined?(:sum)
end

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

N, a_list = gets_n_and_i_list

f = (a_list.sum.to_f / N).floor
c = (a_list.sum.to_f / N).ceil

f_total = a_list.inject(0) do |s, a|
  s = s + (a - f) ** 2
end

c_total = a_list.inject(0) do |s, a|
  s = s + (a - c) ** 2
end

puts [f_total, c_total].min