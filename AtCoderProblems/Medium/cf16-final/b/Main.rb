require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
N = gets_i

total = 0
max = 0
1.upto(N) do |n|
  total += n
  if total >= N
    max = n
    break
  end
end

diff = total - N
((1..max).to_a - [diff]).each do |i|
  puts i
end