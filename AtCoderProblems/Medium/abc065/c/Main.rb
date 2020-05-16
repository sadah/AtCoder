require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

# https://qiita.com/jkr_2255/items/95a0c0a573baa1578121
def factorial(n)
  arr = [*1..n]
  loop do
    return arr[0] if arr.length == 1
    arr = arr.each_slice(2).map { |a, b| b ? a * b : a }
  end
end

N, M = gets_i_list
MOD = 10**9 + 7

if N != M && N - 1 != M && N != M - 1
  puts 0
  exit
end

if N == M
  puts (factorial(N) * factorial(M) * 2) % MOD
else
  a, b = 0, 0
  if N > M
    a = N
    b = M
  else
    a = M
    b = N
  end
  puts (factorial(b)**2 * a) % MOD
end
