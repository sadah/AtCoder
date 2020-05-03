require 'pp'

# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end

S = gets_s

puts S == "ABC" ? "ARC" : "ABC"