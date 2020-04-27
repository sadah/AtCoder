require 'pp'

# n件読み込んだ結果を文字列の配列で返却する
def gets_n_s_list
  n = gets.chomp.to_i
  array = []
  n.times do
    array.push(gets.chomp)
  end
  return n, array
end

N, s_list = gets_n_s_list
puts s_list.uniq.size