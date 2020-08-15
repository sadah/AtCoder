require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
n, hlist = gets_n_and_i_list

hlist.reverse!

0.upto(n-2) do |i|
  ch = hlist[i]
  nh = hlist[i+1]
  if ch < nh
    hlist[i+1] -= 1
  end
end

if hlist == hlist.sort.reverse
  puts "Yes"
else
  puts "No"
end