require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
n, alist = gets_n_and_i_list
ralist = alist.reverse
t1, t2 = [alist.first], [ralist.first]

1.upto(n-1) do |i|
  t1.push(t1[i-1] + alist[i])
  t2.push(t2[i-1] + ralist[i])
end

min = alist.sum
1.upto(n-1) do |s|
  min = [(t1[s-1] - t2[n-1-s]).abs, min].min
end

puts min