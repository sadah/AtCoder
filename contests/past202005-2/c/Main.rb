require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

A, R, N = gets_i_list

puts A * (R ** (N-1)) > 10**9 ? "large" : A * (R ** (N-1))


# A, R, N = gets_i_list
# # A, R, N = 10**9, 10**9,10**9
# # A, R, N = [2, 3, 19]
# max = 10**9
# rn = (max / A).ceil
# count = Math.log(rn,R)

# puts count <= N ? "large" : A * (R ** (N-1))
