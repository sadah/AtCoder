# https://atcoder.jp/contests/dp/submissions/12482219
require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, W = gets_i_list
wv_list = []
N.times do
  wv_list.push gets_i_list
end

wv_list.sort!{|x,y| x[0]<=>y[0]}
dp = Array.new(W + 1, 0)

wv_list.each do |w, v|
  W.downto(w) do |i|
    dp[i] = dp[i - w] + v if dp[i] < dp[i - w] + v
  end
end

puts dp.max