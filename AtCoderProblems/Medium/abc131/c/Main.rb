require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

A, B, C, D = gets_i_list
E = C.lcm(D)

total = 0
total += (B / C) - ((A-1) / C)
total += (B / D) - ((A-1) / D)
total -= (B / E) - ((A-1) / E)

puts B - A + 1 - total
