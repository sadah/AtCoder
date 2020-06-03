require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
a, b, x = gets_i_list


digit = nil
0.upto(10) do |i|
  total = a * (10 ** i) + b * i
  dpp total
  if x <= total
    digit = i
    break
  end
end

if x >= a * 10**9 + b * 10
  puts 10**9
else
  puts (x - b * digit) / a
end
