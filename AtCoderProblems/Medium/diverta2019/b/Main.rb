require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

R, G, B, N = gets_i_list

max_r = (N.to_f / R).ceil
max_g = (N.to_f / G).ceil

count = 0
0.upto(max_r).each do |r|
  0.upto(max_g).each do |g|
    remain = N - R * r - G * g
    if remain >= 0 && remain % B == 0
      count += 1
    end
  end
end

puts count
