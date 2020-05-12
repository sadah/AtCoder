require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

# [a, b].min が遅いので
def min(a, b)
  return a < b ? a : b
end

N = gets_i
s_list = gets_nsp_list

w_count, e_count = 0, 0
counts = s_list.map do |s|
  if s == "W"
    w_count += 1
  else
    e_count += 1
  end
  [w_count, e_count]
end

total = N
N.times do |i|
  l = i - 1 >= 0 ? counts[i - 1][0] : 0
  r = counts[N-1][1] - counts[i][1]
  total = min(total, l + r)
end

puts total