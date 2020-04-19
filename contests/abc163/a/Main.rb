require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

R = gets_i

puts R * 2 * 3.1415926535
