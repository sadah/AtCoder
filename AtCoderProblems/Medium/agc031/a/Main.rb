require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

N = gets_i
s_list = gets_nsp_list

MOD = 10**9 + 7

s_count = s_list.group_by(&:itself).map{|k,v| v.count + 1 }
puts (s_count.inject(&:*) - 1) % MOD
