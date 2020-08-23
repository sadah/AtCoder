require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

s = gets.chomp
k = gets_i

s.chars.each_with_index do |s, i|
  if s != "1"
    puts s
    exit
  elsif i == k - 1
    puts 1
    exit
  end
end
