require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
# N = gets_i

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
# N, M = gets_i_list
# list = gets_i_list

def gets_nsp_list()
  gets.chomp.split("").map(&:to_i)
end

# [a, b].min が遅いので
def min(a, b)
  return a < b ? a : b
end

# [a, b].max が遅いので
def max(a, b)
  return a > b ? a : b
end

t = gets_i

t.times do
  n = gets_i
  a_list = gets_i_list
  s_list = gets_nsp_list

  as_list = [a_list, s_list].transpose

  as0_list = as_list.select{|a,s| s == 0}.sort{|x,y| x[1]<=>x[0]}
  as1_list = as_list.select{|a,s| s == 1}.sort{|x,y| x[1]<=>x[0]}

  dpp as0_list
  dpp as1_list

  x = 0
  as1_list.each do |a, _|
    x = max(x, x ^ a)
  end
dpp x
  as0_list.each do |a, _|
    x = min(x, x ^ a)
  end
  dpp x

  puts x == 0 ? 0 : 1
end