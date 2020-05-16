require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

s_list = gets_nsp_list
N = s_list.size
K = gets_i

if s_list.size == 1
  puts K/2
  exit
end

if s_list.uniq.size == 1
  puts N * K / 2
  exit
end

count = 0
s_list2 = s_list.dup

1.upto(N - 1) do |i|
  if s_list2[i] != "#" && s_list2[i-1] == s_list2[i]
    s_list2[i] = "#"
    count += 1
  end
end

if s_list.first == s_list.last
  c = s_list.first
  f_count, l_count = 0, 0
  s_list.each do |s|
    f_count += 1 if s == c
    break if s != c
  end
  s_list.reverse_each do |s|
    l_count += 1 if s == c
    break if s != c
  end
  dpp [count, f_count, l_count]
  puts count * K - (f_count/2 + l_count/2  - (f_count + l_count)/2) * (K - 1)
else
  puts count * K
end