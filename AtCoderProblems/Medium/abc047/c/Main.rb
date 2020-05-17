require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

s_list = gets_nsp_list
n = s_list.size

if s_list.uniq.size == 1
  puts 0
  exit
end

c = s_list.first
count = 0
1.upto(n-1) do |i|
  dpp [c, s_list[i]]
  if s_list[i] != c
    count += 1
    c = s_list[i]
  end
end

puts count