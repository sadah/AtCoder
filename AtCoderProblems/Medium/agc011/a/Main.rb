require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
# N = gets_i

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
# N, M = gets_i_list
# list = gets_i_list

N, C, K = gets_i_list
t_list = []
N.times do
  t_list.push(gets_i)
end
t_list.sort!

t_end = t_list[0] + K
p_count = 0
count = 1
t_list.each do |t|
  if t <= t_end && p_count < C
    # 乗れた
    p_count += 1
  else
    # 乗れない
    t_end   = t + K
    count  += 1
    p_count = 1
  end
end

puts count