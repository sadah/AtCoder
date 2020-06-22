require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end
s = gets_s

upcase = ("A".."Z").to_a
downcase = ("a".."z").to_a

if upcase.include?(s)
  puts("A")
else
  puts("a")
end