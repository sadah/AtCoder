require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

N = gets_i
s_list = gets_nsp_list
t_list = gets_nsp_list

count = 0
(1..N).each do |i|
  if s_list.slice(N-i,N) == t_list.slice(0,i)
    count = i
  end
end
puts N * 2 - count
