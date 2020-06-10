require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
N, M, K = gets_i_list

0.upto(N) do |i|
  0.upto(M) do |j|
    b_count = i * (M - j) + j * (N - i)
    if K == b_count
      puts "Yes"
      exit
    end
  end
end

puts "No"
