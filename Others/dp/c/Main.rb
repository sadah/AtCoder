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

(N).times do |i|
  0.upto(2) do |j|
    options = []
    options.push(dp[i][0]) if j != 0
    options.push(dp[i][1]) if j != 1
    options.push(dp[i][2]) if j != 2
    dp[i + 1][j] = options.max + abc[i][j]
  end
end
puts dp.last.max
