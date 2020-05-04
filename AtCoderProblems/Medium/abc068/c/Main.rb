require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, M = gets_i_list

one_two = []
n_two   = []
ab_list = M.times.map do
  from, to = gets_i_list
  if from == 1
    one_two.push(to)
  elsif to == 1
    one_two.push(from)
  end

  if from == N
    n_two.push(to)
  elsif to == N
    n_two.push(from)
  end    
end

if (one_two & n_two).empty?
  puts "IMPOSSIBLE"
else
  puts "POSSIBLE"
end
