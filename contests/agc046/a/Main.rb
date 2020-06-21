require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

x = gets_i
pi2 = 360

if pi2 % x == 0
  puts pi2 / x
else
  puts pi2.lcm(x) / x
end
