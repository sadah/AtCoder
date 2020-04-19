require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, Y = gets_i_list

(0..N).each do |i|
  (0..(N-i)).each do |j|
    k = N - i - j
    total = i * 10000 + j * 5000 + k * 1000
    if total == Y
      puts [i, j, k].join(" ")
      exit
    end
  end
end

puts [-1, -1, -1].join(" ")
