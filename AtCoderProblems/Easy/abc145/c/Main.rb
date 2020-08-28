require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
n = gets_i

xys = []
n.times do
  xys.push gets_i_list
end

total = 0.0
perms = xys.permutation(n).to_a
perms.each do |route|
  1.upto(n-1) do |i|
    dx = (route[i][0] - route[i-1][0])
    dy = (route[i][1] - route[i-1][1])
    total += ((dx**2 + dy**2)) ** 0.5
  end
end

puts total / perms.size