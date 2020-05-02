require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, M = gets_i_list

i = 1
j = (N/2) * 2

a = []
M.times do
  a.push([i, j])
  i += 1
  j -= 1
end
a.reverse!
k = 0
M.times do
  puts a[k].join(" ")
  k += 1
end
