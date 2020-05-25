require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end
_ = gets
x, max = 0, 0

s_list = gets_nsp_list
s_list.each do |s|
  if s == "I"
    x += 1
  else
    x -= 1
  end
  max = [x, max].max
end

puts max