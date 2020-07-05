require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

n, a_list = gets_n_and_i_list

a_list.sort!.reverse!

total = 0
count = n

0.upto(n) do |i|
  if count > 0
    total += a_list[i]
    count -= 1
  else
    break
  end

  if count > 0
    total += a_list[i]
    count -= 1
  else
    break
  end
end

puts total - a_list.first