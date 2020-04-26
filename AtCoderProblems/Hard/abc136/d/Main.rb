require 'pp'

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

s_list = gets_nsp_list
N = s_list.size
children = Array.new(N,0)

count_r, count_l = 0, 0
s_list.each_with_index do |s,i|
  if s == "R"
    count_r += 1
  else
    children[i] += count_r / 2
    children[i-1] += (count_r + 1) / 2
    count_r = 0
  end
end

p children

children.reverse!
s_list.reverse.each_with_index do |s,i|
  if s == "L"
    count_l += 1
  else
    children[i] += count_l / 2
    children[i-1] += (count_l + 1) / 2
    count_l = 0
  end
end

puts children.reverse.join(" ")
