require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

N, h_list = gets_n_and_i_list

list = [h_list]
count = 0
while true
  break if list.empty?
  target = list.pop
  if target.include?(0)
    index = target.index(0)
    left  = target[0,index]
    right = target[index+1, target.size]
    list.push(left)  unless left.empty?
    list.push(right) unless right.empty?
  else
    list.push(target.map{|i|i-1})
    count += 1
  end
end

puts count
