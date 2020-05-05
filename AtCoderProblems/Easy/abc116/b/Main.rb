require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

x = gets_i
a_list = [s]

i = 1
while true do
  ans = 0
  n   = a_list[i-1]
  if n.even?
    ans = n /2
  else
    ans = 3 * n + 1
  end
  if a_list.include?(ans)
    puts i + 1
    exit
  else
    a_list[i] = ans
    i += 1
  end
end