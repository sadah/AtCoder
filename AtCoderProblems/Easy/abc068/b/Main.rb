require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

N = gets_i

puts 2 ** Math::log(N,2).floor
