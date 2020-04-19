# 入力値を数値で返す
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返す
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N = gets_i
K = gets_i
x_list = gets_i_list

total = 0
x_list.each do |x|
  total += [(x - 0).abs * 2, (x - K).abs * 2].min
end

puts total
