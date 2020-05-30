require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end

N, Q = gets_i_list
S = gets_s

ac_totals = Array.new(N, 0)

0.upto(N-2) do |i|
  if S[i] == "A" && S[i+1] == "C"
    ac_totals[i + 1] = ac_totals[i] + 1
  else
    ac_totals[i + 1] = ac_totals[i]
  end
end

Q.times do
  l, r = gets_i_list
  puts ac_totals[r-1] - ac_totals[l-1]
end