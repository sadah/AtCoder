require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, T = gets_i_list
t_list = gets_i_list

total_time = 0
end_time   = 0

t_list.each do |t|
  if end_time > t
    total_time += T - (end_time - t)
  else
    total_time += T
  end
  end_time = t + T
end

puts total_time
