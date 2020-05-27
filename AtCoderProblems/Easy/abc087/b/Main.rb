require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
A = gets_i
B = gets_i
C = gets_i
X = gets_i

count = 0
(0..A).each do |i|
  (0..B).each do |j|
    diff = X - 500 * i - 100 * j
    dpp [i, j, diff]
    if diff >= 0 && diff % 50 == 0 && diff / 50 <= C
      count += 1
    end
  end
end

puts count
