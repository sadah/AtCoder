require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
# N = gets_i

def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

q, h, s, d = gets_i_list
n = gets_i

min1 = [q * 4, h * 2, s].min

if d > min1 * 2
  puts n * min1
else
  puts (n / 2) * d + (n % 2) * min1
end