require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
N, a_list = gets_n_and_i_list

total = 0
loop do
  0.upto(N-1) do |i|
    if a_list[i].odd?
      puts total
      exit
    end
    a_list[i] = a_list[i] / 2
  end
  total += 1
end
puts total