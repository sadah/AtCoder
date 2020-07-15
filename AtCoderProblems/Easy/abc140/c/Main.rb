require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
n, blist = gets_n_and_i_list

ans = blist.last

if n >= 2
  (n-2).downto(1) do |i|
    ans += [blist[i], blist[i-1]].min
  end
end

puts ans + blist[0]
