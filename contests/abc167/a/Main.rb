require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}


# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

s_list = gets_nsp_list
t_list = gets_nsp_list

s_list.each_with_index do |c, i|
  unless c == t_list[i]
    puts "No"
    exit
  end
end
puts "Yes"