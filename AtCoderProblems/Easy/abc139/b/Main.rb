# 空白区切の入力を数値(整数)の配列で返す
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

A, B = gets_i_list

if B == 1
  puts 0
else
  count = 1
  total = A
  while true
    break if total >= B
    count += 1
    total = (A * count) - (count - 1)
  end
  puts count
end
