require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

s_list = gets_nsp_list
az = ("a".."z").to_a

diff = az - s_list.uniq.sort

if diff.empty?
  puts "None"
else
  puts diff.first
end
