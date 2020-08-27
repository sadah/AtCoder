require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

def factorial(n)
  arr = [*1..n]
  loop do
    return arr[0] if arr.length == 1
    arr = arr.each_slice(2).map { |a, b| b ? a * b : a }
  end
end

n = gets_i
puts factorial(n) % (10**9 + 7)