require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

n, a, b = gets_i_list

ans = 0
1.upto(n) do |i|
  sum = i.to_s.chars.map(&:to_i).sum
  if sum >= a && sum <= b
    ans += i
  end
end

puts ans
