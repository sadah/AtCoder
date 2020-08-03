require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
k = gets_i

if k.even?
  puts "-1"
  exit
end

num = 0

1.upto(k) do |i|
  num = num * 10 + 7
  num %= k
  if num == 0
    puts i
    exit
  end
end

puts "-1"