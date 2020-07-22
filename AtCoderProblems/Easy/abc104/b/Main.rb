require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

s = gets_nsp_list

if s[0] != "A"
  puts "WA"
  exit
end

if s[2..(s.size-2)].count("C") != 1
  puts "WA"
  exit
end

ls = s - ["A", "C"]

if ls == ls - ("A".."Z").to_a
  puts "AC"
  exit
end

puts "WA"
