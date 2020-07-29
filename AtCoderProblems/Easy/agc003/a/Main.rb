require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

slist = gets_nsp_list.uniq

ns = slist.include?("N") && slist.include?("S")
se = slist.include?("W") && slist.include?("E")

size = slist.size
if size == 4
  puts "Yes"
elsif size == 2
  if ns
    puts "Yes"
  elsif se
    puts "Yes"
  else
    puts "No"
  end
elsif size == 1 || size == 3
  puts "No"
end