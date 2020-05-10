require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
N, K = gets_i_list
a_list = [0]
a_list += gets_i_list

to = a_list[1]
route = [1]
K.times do |i|
  if route.index(to)
    remain_count = (K - route.size)
    rloop = route.slice(route.index(to), route.size)
    puts rloop[remain_count % rloop.size]
    exit
  end
  route.push(to)
  to = a_list[to]
end
puts route.last
