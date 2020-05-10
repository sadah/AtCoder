require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

N, K = gets_i_list
R, S, P = gets_i_list
t_list = gets_nsp_list

points = {
  "r" => P,
  "s" => R,
  "p" => S
}
ans = 0
N.times do |i|
  if i < K || t_list[i] != t_list[i-K]
    ans += points[t_list[i]]
  else
    t_list[i] = "x"
  end
end

puts ans