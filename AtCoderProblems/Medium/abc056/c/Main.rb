require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

x = gets_i
puts ((- 1 + Math.sqrt(1 - (-x*2*4)))/2).ceil
