require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

X = gets_i

i = 0
total = 100
while true do
  if total >= X
    puts i
    exit
  end
  i += 1
  total = (total * 1.01).floor
end
