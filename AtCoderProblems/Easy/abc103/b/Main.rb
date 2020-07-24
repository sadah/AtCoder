require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

s = gets_nsp_list
t = gets_nsp_list
n = s.size-1
0.upto(n) do |i|
  ss = s[i..n] + s[0...i]
  if ss.join == t.join
    puts "Yes"
    exit
  end
end

puts "No"
