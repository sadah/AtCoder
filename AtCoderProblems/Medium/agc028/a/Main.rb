require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end


# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end

N, M = gets_i_list
S = gets_s
T = gets_s

lcm =  N.lcm(M)

n_index = N.times.map do |i|
  i * (lcm/N) + 1
end

m_index = M.times.map do |i|
  i * (lcm/M) + 1
end

list = n_index & m_index

list.each do |i|
  if S[n_index.index(i)] != T[m_index.index(i)]
    puts -1
    exit
  end
end
puts lcm