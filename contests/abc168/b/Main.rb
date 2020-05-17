require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end

K = gets_i
S = gets_s

if S.size <= K
  puts S
else
  puts S[0,K] + "..."
end