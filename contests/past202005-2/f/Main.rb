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
cc_list = []

N.times do
  cc_list.push gets_nsp_list.sort
end

ans = []
(N/2).times do |i|
  l = cc_list[i]
  r = cc_list[N - i - 1]
  candidates = l & r
  if candidates.empty?
    puts -1
    exit
  else
    ans.push candidates.first
  end
end

if N.even?
  puts (ans + ans.reverse).join
else
  puts (ans + [cc_list[N/2][0]] + ans.reverse).join
end