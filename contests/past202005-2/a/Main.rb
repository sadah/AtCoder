require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end
S = gets_s
T = gets_s

if S == T
  puts "same"
elsif S.upcase == T.upcase
  puts "case-insensitive"
else
  puts "different"
end
