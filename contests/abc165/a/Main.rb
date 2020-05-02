require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

K = gets_i
A, B = gets_i_list


b = B / K

a = A / K

aa = a * K
aaa  = (a+1) * K

if A <= aa && aa <= B  
  puts "OK"
elsif A <= aaa && aaa <= B
  puts "OK"
else
  puts "NG"
end
