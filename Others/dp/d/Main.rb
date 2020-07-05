require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

def max(a, b)
  return a > b ? a : b
end

n, w = gets_i_list
wlist, vlist = [], []

n.times do |i|
  wlist[i], vlist[i] = gets_i_list
end

# DPテーブルの初期化
# dp[i][sumW] := i-1 番目までの品物から重さが sumW を
# 超えないように選んだときの、価値の総和の最大値
dp = Array.new(n + 1).map{ Array.new(w + 1, 0) }

# このままだとTLEする
0.upto(n-1) do |i|
  0.upto(w) do |sumW|
    if sumW - wlist[i] >= 0
      nv = dp[i][sumW - wlist[i]] + vlist[i]
      dp[i+1][sumW] = max(dp[i+1][sumW], nv)
    end
    dp[i+1][sumW] = max(dp[i+1][sumW], dp[i][sumW])
  end
end

puts dp.last.last