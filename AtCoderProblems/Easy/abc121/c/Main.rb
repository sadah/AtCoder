require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
n, m = gets_i_list

ab = []

n.times do
  ab.push gets_i_list
end
ab.sort!
total = 0
ab.each do |a, b|
  if m >= b
    total += a * b
    m -= b
  else
    total += m * a
    break
  end
end

puts total