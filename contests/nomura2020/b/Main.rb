require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end
# S = gets_s

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

s = gets_s
puts s.gsub("?","D")
