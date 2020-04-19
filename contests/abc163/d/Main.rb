require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

def combi(n,k)
  k = n-k if 2 * k > n
  return 1 if k == 0
  ((n - k + 1)..n).reduce(&:*)/((1..k).reduce(&:*))
end

N, K = gets_i_list

n_list  = (0..N).to_a
rn_list = n_list.reverse
total_count = 0

min = (K * (K-1)) / 2
max = rn_list[0,K].sum

K.upto(n_list.size) do |k|
  total_count += max - min + 1
  min += k
  max += N - k
end

puts total_count % (10**9 + 7)
