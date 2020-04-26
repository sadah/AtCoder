require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, K = gets_i_list
a_list = gets_i_list

MOD=10**9+7

# Binary Indexed Tree
# https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A7%E3%83%8B%E3%83%83%E3%82%AF%E6%9C%A8
# https://ikatakos.com/pot/programming_algorithm/dynamic_programming/inversion
# https://scrapbox.io/pocala-kyopro/%E8%BB%A2%E5%80%92%E6%95%B0
# http://hos.ac/slides/20140319_bit.pdf
def sum(i)
  s = 0
  while i > 0 do
    s += @bit[i]
    i -= i & -i
  end
  return s
end

def add(i, x)
  while i <= @bit.size - 1 do
    @bit[i] += x
    i += i & -i
  end
end

@bit = Array.new(a_list.size + 1, 0)
inversion_number = 0
a_list.each_with_index do |a, i|
  add(a, 1)
  inversion_number += i + 1 - sum(a)
end

@bit = Array.new(a_list.size * 2 + 1, 0)
inversion_number2 = 0
a_list2 = a_list * 2
a_list2.each_with_index do |a, i|
  add(a, 1)
  inversion_number2 += i + 1 - sum(a)
end

diff = inversion_number2 - inversion_number * 2
ans = (inversion_number * K + diff * K * (K-1) / 2) % MOD

puts ans