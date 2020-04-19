require 'pp'

# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end

S = gets_s

keys = [
  ["", "keyence"],
  ["k", "eyence"],
  ["ke", "yence"],
  ["key", "ence"],
  ["keye", "nce"],
  ["keyen", "ce"],
  ["keyenc", "e"],
  ["keyence", ""],
]

keys.each do |left, right|
  if S.index(left) == 0 && S.reverse.index(right.reverse) == 0
    puts "YES"
    exit
  end
end
puts "NO"
