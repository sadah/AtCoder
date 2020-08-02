require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split("")
end
n, clist = gets_n_and_i_list

# h = clist.size / 2
# ans = 0

# bc = clist[0..h]
# ac = clist[h...clist.size]

# a = [bc.count("W"),ac.count("R")].min
# b = [bc.count("R"),ac.count("W")].min

# puts [a,b].max

sc = clist.sort

ans = 0
0.upto(n-1) do |i|
  if clist[i] != sc[i]
    ans += 1
  end
end

puts ans / 2