require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

os = gets_nsp_list
es = gets_nsp_list

ans = []

while !os.empty? || !es.empty?
  ans.push os.shift
  ans.push es.shift
end

puts ans.join