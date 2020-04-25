require 'pp'

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

s_list = gets_nsp_list
max_floor = s_list.size

count = 0
s_list.each_with_index do |s, i|
  current_floor = i + 1
  upper = max_floor - current_floor
  lower = current_floor - 1
  if s == "U"
    count += upper * 1 + lower * 2
  else
    count += upper * 2 + lower * 1
  end
end

puts count