# 入力値を数値で返す
def gets_i()
  gets.chomp.to_i
end

N = gets_i
p = (N / 1.08).ceil
puts (p * 1.08).floor == N ? p : ":("
