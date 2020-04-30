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
INF = Float::INFINITY

# dpをhashで管理する。 {最大価値 => 容量}
# w <= 10**9, v <= 10**3 なので v をkeyにする
# w を key にすると LTE
dp = Hash.new(INF)
dp[0] = 0

wv_list.each do |w, v|
  # ループで更新した値を参照してしまうため、dupする
  dp.dup.each do |dpv, dpw|
    nw = dpw + w
    nv = dpv + v
    # 容量を超えた場合は next
    next if nw > W
    # 同じ価値で重さが軽ければ更新
    dp[nv] = nw if dp[nv] > nw
  end
end
puts dp.keys.max

# # dpをhashで管理する。 {容量 => 最大価値}
# w <= 10**9, v <= 10**3 なので w を key にすると LTE
# dp = Hash.new(0)
# dp[0] = 0
#
# wv_list.each do |w, v|
#   # ループで更新した値を参照してしまうため、dupする
#   # (計測したい処理)
#   dp.dup.each do |dpw, dpv|
#     nw = dpw + w
#     nv = dpv + v
#     # 容量を超えた場合は next
#     next if nw > W
#     # 同じ重さで価値が大きければ更新
#     dp[nw] = nv if dp[nw] < nv
#   end
# end
# puts dp.values.max
