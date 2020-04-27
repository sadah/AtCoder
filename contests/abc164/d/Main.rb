require 'pp'

# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end

S = gets_s
n = S.size
MOD = 2019

s_list = S.chars
count = 0
n.times do
  ss_list = s_list.dup
  (s_list.size - 4).times do
    s = ss_list.join.to_i
    p s
    if s % 2019 == 0
      puts "OK"
      count += 1 
    end
    ss_list.shift
  end
  s_list.pop
end
 p count