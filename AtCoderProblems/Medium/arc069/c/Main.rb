require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

S, C = gets_i_list

if S >= C * 2
  puts [S, C/2].min
elsif S >= C / 2
  puts C / 2
else
  diff = C - S * 2
  puts S + diff / 4
end


