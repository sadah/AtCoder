require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

N, a_list = gets_n_and_i_list

mods = []
min_a = a_list.min
while true do 
  mods = a_list.map do |a|
    a % min_a
  end
  mods -= [0]
  if mods.empty?
    puts min_a
    exit
  end
  min_a = mods.min
end
