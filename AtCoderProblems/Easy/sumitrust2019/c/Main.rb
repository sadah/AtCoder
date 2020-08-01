require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
x = gets_i

if x < 100
  puts 0
else
  xc = x.to_s.chars
  a = xc.pop
  b = xc.pop
  m = [b, a].join.to_i
  n = m % 5 == 0 ? m / 5 : m / 5 + 1
  if xc.join.to_i >= n
    puts 1
  else
    puts 0
  end
end