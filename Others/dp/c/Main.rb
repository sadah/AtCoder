require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N =gets_i
abc = []
N.times do
  abc.push(gets_i_list)
end

dp = Array.new(N + 1).map{Array.new(3,0)}
(N).times do |n|
  # A
  dp[n + 1][0] = [dp[n][1], dp[n][2]].max + abc[n][0]
  # B
  dp[n + 1][1] = [dp[n][0], dp[n][2]].max + abc[n][1]
  # C
  dp[n + 1][2] = [dp[n][0], dp[n][1]].max + abc[n][2]
end
puts dp.last.max
