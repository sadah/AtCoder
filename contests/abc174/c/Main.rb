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

if k.to_s.chars.uniq == ["7"]
  puts k.to_s.chars.size
  exit
end
