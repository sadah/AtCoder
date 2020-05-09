require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

N = gets_i

s = gets_nsp_list
ans = s.group_by(&:itself).map{|k,v| [k,v.count]}.to_h

(N - 1).times do
  s = gets_nsp_list
  count_hash = s.group_by(&:itself).map{|k,v| [k,v.count]}.to_h
  ans = (ans.keys & s).map do |k|
    [k, [ans[k], count_hash[k]].min]
  end.to_h
end

puts ans.map{|k,v| k * v}.join.chars.sort.join
