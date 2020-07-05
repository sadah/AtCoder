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

h, w, k = gets_i_list
board = []

h.times do
  board.push gets_nsp_list
end

h_patterns = []
0.upto(h) do |i|
  h_patterns += (0...h).to_a.combination(i).to_a
end

w_patterns = []
0.upto(w) do |i|
  w_patterns += (0...w).to_a.combination(i).to_a
end

ans = 0
h_patterns.each do |hp|
  w_patterns.each do |wp|

    b = board.dup
    hp.each do |h|
      b[h] = ["-"] * w
    end
    wp.each do |w|
      tb = b.transpose
      tb[w] = ["-"] * h
      b = tb.transpose
    end

    count = b.sum do |line|
      line.count("#")
    end
    if count == k
      ans += 1
    end
  end
end

puts ans