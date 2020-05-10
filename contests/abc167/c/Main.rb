require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
# list = gets_i_list

N, M, X = gets_i_list

ca_list = N.times.map do
  gets_i_list
end

ans = []
1.upto(N) do |i|
  ca_list.combination(i).to_a.each do |ca_combi|
    total = Array.new(M + 1,0)
    ca_combi.each do |ca|
      ca.each_with_index do |a, j|
        total[j] += a
      end
    end
    cost = total.shift
    as = total.select{|e| e >= X}
    if as.size == M
      ans.push(cost)
    end
  end
end
if ans.empty?
  puts "-1"
else
  puts ans.min
end