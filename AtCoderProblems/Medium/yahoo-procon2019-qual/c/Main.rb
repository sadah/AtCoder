require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

K, A, B = gets_i_list

diff = B - A
if diff <= 2
  puts K + 1
else
  k_count = K - A + 1
  ab_count = (k_count.to_f / 2).floor
  remain_count = k_count - ab_count * 2
  bc = A + (B - A) * ab_count + remain_count
  puts bc
end
