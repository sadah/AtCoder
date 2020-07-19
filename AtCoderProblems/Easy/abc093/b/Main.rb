require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
a, b, k = gets_i_list

ans = []

a.upto(a + k -1) do |i|
  if i <= b
    ans.push i
  end
end

(b - k + 1).upto(b) do |i|
  if i >= a
    ans.push i
  end
end

ans.uniq.sort.each do |i|
  puts i
end